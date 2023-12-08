import phonenumbers
from phonenumbers import NumberParseException
from rest_framework.exceptions import ValidationError


def validate_phone(phone: str):
    if not isinstance(phone, str):
        raise ValidationError("Phone number must be string")
    try:
        phone = phonenumbers.parse(phone, "RU")
        return f"+{phone.country_code}{phone.national_number}"
    except NumberParseException as ex:
        raise ValidationError(str(ex))
