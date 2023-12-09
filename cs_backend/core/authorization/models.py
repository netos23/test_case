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
    profi = models.BooleanField(default=False)
    age6_12 = models.BooleanField(default=False)
    age13_16 = models.BooleanField(default=False)
    age16_90 = models.BooleanField(default=False)
    total_score = models.IntegerField(default=0)


class AuthCodeModel(models.Model):
    email = models.EmailField(null=True)
    code = models.IntegerField()
    created_at = models.DateTimeField(auto_now_add=True)


class UserLevel(models.Model):
    level = models.CharField(max_length=255)
    score_from = models.IntegerField()
    score_to = models.IntegerField()
    picture = models.URLField(null=True, blank=True)
    color = models.CharField(max_length=255)
