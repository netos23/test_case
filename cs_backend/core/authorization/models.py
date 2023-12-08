from django.contrib.auth.models import Group, AbstractUser, Permission
from django.db import models

from .validators import validate_phone


class Users(AbstractUser):
    username = models.CharField(max_length=255, default="", name="name")
    email = models.EmailField(null=True, default=None, blank=True)
    phone = models.CharField(max_length=255, validators=(validate_phone,), null=True)
    groups = models.ManyToManyField(Group)
    user_permissions = models.ManyToManyField(Permission)
    refresh_token = models.TextField()
    is_verified = models.BooleanField(default=False)
    GENDERS = [
        ("unknown", "unknown"),
        ("male", "male"),
        ("female", "female"),
    ]
    gender = models.CharField(choices=GENDERS, max_length=64, default="unknown")
    birthday = models.DateField(null=True)
    address = models.CharField(max_length=1024, null=True)
    tg_chat_id = models.IntegerField(null=True)
    tg_chat_start_link = models.URLField(max_length=256, null=True)


class AuthCodeModel(models.Model):
    email = models.EmailField(null=True)
    code = models.IntegerField()
    created_at = models.DateTimeField(auto_now_add=True)
