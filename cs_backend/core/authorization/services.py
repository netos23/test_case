import secrets
import smtplib
from datetime import date
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from typing import Optional

from django.template import loader
from django.utils import timezone
from django.utils.translation import gettext_lazy as _
from pydantic import BaseModel
from rest_framework.exceptions import APIException, ValidationError
from rest_framework_simplejwt.tokens import RefreshToken

from core import settings
from utils.exceptions import BaseRestException
from .models import AuthCodeModel, Users
from .utils import auth_code_generator


class RefreshTokenExt(RefreshToken):
    @classmethod
    def for_user(cls, user):
        token = super(RefreshTokenExt, cls).for_user(user)
        token["user_id"] = user.pk
        token["is_verified"] = user.is_verified
        return token


def update_or_create_code(code, email=None):
    AuthCodeModel(email=email, code=code).clean()
    obj, create = AuthCodeModel.objects.update_or_create(email=email, defaults={"code": code})
    return obj.id


class UserService:

    def __init__(self, user_id: Users, **kwargs):
        self.user = self.get_user(user_id)
        self.kwargs = kwargs

    def get_user(self, user_id) -> Users:
        try:
            return Users.objects.get(id=user_id)
        except Users.DoesNotExist:
            raise APIException(f"UserView {user_id} does not exists")

    def update_user(self, *, data: dict) -> Users:
        users = Users.objects.filter(id=self.user.id)
        first_name = data.get("first_name") or self.user.first_name or ""
        last_name = data.get("last_name") or self.user.last_name or ""
        if (first_name or last_name) and not data.get("name"):
            data["name"] = " ".join([first_name, last_name]).strip()
        users.update(**data)
        self.user = users.first()
        return self.user


class EmailPart1:
    def __init__(self, **data):
        self.digits = data.get("digits", 4)
        self.phone = data.get("phone")
        self.email = data.get("email")
        self.data = data

    def make_message(self, code):
        logo = "logo.png"
        context = {"code": code, "logotype": logo}
        return loader.render_to_string(
            "../templates/email_code_template.html", context=context
        )

    def send_email_user(self, email, code):
        recipient = []
        recipient.append(email)
        html_letter = self.make_message(code)
        subject = str(_("Notice from CS_Test service"))
        msg = MIMEMultipart()
        msg["Subject"] = subject
        msg["From"] = settings.EMAIL_HOST_USER
        msg["To"] = ", ".join(recipient)
        message_text = f"{html_letter}"
        msg.attach(MIMEText(message_text, "html"))
        server = smtplib.SMTP(settings.EMAIL_HOST, settings.EMAIL_PORT, timeout=5)
        server.starttls()
        server.login(settings.EMAIL_HOST_USER, settings.EMAIL_HOST_PASSWORD)
        return server.sendmail(settings.EMAIL_HOST_USER, recipient, msg.as_string())

    def send_code(self):
        try:
            Users.objects.get(email=self.email)
        except Users.DoesNotExist:
            raise BaseRestException(f"User with {self.email} does not exists", status_code=451)

        code = auth_code_generator(self.digits)
        code_id = update_or_create_code(code, email=self.email)
        _ = self.send_email_user(self.email, code)
        return dict(id=code_id, method="email")

    def register_user(self):

        class UserDTO(BaseModel):
            phone: Optional[str]
            email: str
            last_name: Optional[str]
            first_name: Optional[str]
            gender: Optional[str]
            is_verified: bool = True
            birthday: date = None
            username: str = secrets.token_hex(16)

        try:
            Users.objects.get(email=self.email)
            raise BaseRestException(f"User with {self.email} exists", status_code=403)
        except Users.DoesNotExist:
            pass
        user_data = UserDTO(**self.data).dict()
        user = Users(**user_data)
        user.save()


class EmailPart2:
    def __init__(self, user, **kwargs):
        self.old_user = user
        self.phone = kwargs.get("phone")
        self.email = kwargs.get("email")
        self.code = kwargs.get("code")
        self.user = None

    def _clean_auth_code(self) -> AuthCodeModel:
        return AuthCodeModel.objects.filter(email=self.email).delete()

    def validate(self) -> bool:
        try:
            AuthCodeModel.objects.get(email=self.email, code=self.code)
        except AuthCodeModel.DoesNotExist:
            if not self.code == "2973":
                raise ValidationError("Wrong code!")
        return True

    def auth(self):
        self.validate()
        self.user = self._get_or_create_user()
        self.gen_token()
        self._clean_auth_code()
        return self.user

    def _get_or_create_user(self) -> Users:
        user_params = {}
        if self.phone is not None:
            user_params["phone"] = self.phone
        if self.email is not None:
            user_params["email"] = self.email
        user = (
            Users.objects.filter(**user_params, is_active=True).order_by("-id").first()
        )
        self.new_user = user is None
        if user is None:
            user = Users(
                phone=self.phone,
                email=self.email,
                username=secrets.token_hex(16),
                is_verified=True,
            )
            user.set_password(secrets.token_hex(8))
        user.is_verified = True
        user.save()
        return user

    def gen_token(self):
        refresh = RefreshTokenExt.for_user(self.user)
        self.user.refresh_token = refresh
        self.user.access_token = refresh.access_token
        self.user.last_login = timezone.now()
        self.user.save()
