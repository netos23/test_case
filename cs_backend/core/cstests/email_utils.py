import smtplib
from email import encoders
from email.mime.base import MIMEBase
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText

from django.template import loader
from django.utils.translation import gettext_lazy as _

from core import settings
from utils.pdf_utils import fill_pdf


def send_certificate_to_user(user, test):
    subject = str(_("Notice from CS_Test service"))
    html_letter = loader.render_to_string("../templates/pdf_template.html", context={"user_name": user.first_name})
    msg = MIMEMultipart()
    msg["Subject"] = subject
    msg["From"] = settings.EMAIL_HOST_USER
    msg["To"] = user.email
    msg.attach(MIMEText(html_letter, "html"))
    part = MIMEBase('application', "octet-stream")
    template = './utils/inp.pdf'
    fill_pdf(user.first_name + " " + user.last_name, test.name, template_file_name=template)
    filename = 'out.pdf'
    part.set_payload(open(filename, "rb").read())
    encoders.encode_base64(part)
    part.add_header(f'Content-Disposition', f'attachment; filename=certificate.pdf')
    msg.attach(part)
    server = smtplib.SMTP(settings.EMAIL_HOST, settings.EMAIL_PORT, timeout=5)
    server.starttls()
    server.login(settings.EMAIL_HOST_USER, settings.EMAIL_HOST_PASSWORD)
    return server.sendmail(settings.EMAIL_HOST_USER, user.email, msg.as_string())
