from django.contrib.auth.models import Group, AbstractUser, Permission
from django.db import models

from .validators import validate_phone


class Users(AbstractUser):
    username = models.CharField(max_length=255, default="", name="name", verbose_name="Имя юзера")
    email = models.EmailField(null=True, default=None, blank=True, verbose_name="Почта")
    phone = models.CharField(max_length=255, validators=(validate_phone,), null=True, verbose_name="Телефон")
    groups = models.ManyToManyField(Group, verbose_name="Группы")
    user_permissions = models.ManyToManyField(Permission, verbose_name="Доступы пользователя")
    refresh_token = models.TextField(verbose_name="Рефреш токен")
    is_verified = models.BooleanField(default=False, verbose_name="Пользователь подтвержден")
    GENDERS = [
        ("unknown", "unknown"),
        ("male", "male"),
        ("female", "female"),
    ]
    gender = models.CharField(choices=GENDERS, max_length=64, default="unknown", verbose_name="Пол")
    birthday = models.DateField(null=True, verbose_name="Дата рождения")
    profi = models.BooleanField(default=False, verbose_name="В профи")
    age6_12 = models.BooleanField(default=False, verbose_name="Категория 6-12")
    age13_16 = models.BooleanField(default=False, verbose_name="Категория 13-16")
    age16_90 = models.BooleanField(default=True, verbose_name="Категория 16-90")
    total_score = models.IntegerField(default=0, verbose_name="Общая сумма баллов")
    initial_passed = models.BooleanField(default=False)

    class Meta:
        verbose_name = "Пользователь"
        verbose_name_plural = "Пользователи"


class AuthCodeModel(models.Model):
    email = models.EmailField(null=True)
    code = models.IntegerField()
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        verbose_name = "Код авторизации"
        verbose_name_plural = "Коды авторизации"


class UserLevel(models.Model):
    level = models.CharField(max_length=255, verbose_name="Уровень")
    score_from = models.IntegerField(verbose_name="Нижний порог")
    score_to = models.IntegerField(verbose_name="Верхний порог")
    picture = models.URLField(null=True, blank=True, verbose_name="Иконка")
    color = models.CharField(max_length=255, verbose_name="Цвет (hex)")

    class Meta:
        verbose_name = "База знаний"
        verbose_name_plural = "Базы знаний"
