from django.db import models
from django.utils.timezone import now
from django.utils.translation import gettext_lazy as _

from authorization.models import Users
from utils.constants import FOR_AGES


class QuestionModel(models.Model):
    TYPES = [
        ('single_checked', _('Один верный')),
        ('multiple_checked', _('Много верных вариантов')),
        ('text', _('Текстовый ответ')),
    ]
    user = models.ForeignKey(Users, on_delete=models.CASCADE, verbose_name="Пользователь")
    created_at = models.DateTimeField(default=now, verbose_name="Дата создания")
    type = models.CharField(max_length=256, choices=TYPES, default='single_checked', verbose_name="Тип вопроса")
    question = models.CharField(max_length=255, verbose_name="Вопрос")
    explain_answer = models.CharField(max_length=1024, verbose_name="Подсказка", default='')
    picture = models.URLField(null=True, blank=True, verbose_name="Изображение")
    sort_number = models.IntegerField(verbose_name="Порядок в тесте", default=0)

    class Meta:
        ordering = ['sort_number', 'id']
        verbose_name = "Вопрос"
        verbose_name_plural = "Вопросы"


class VariantModel(models.Model):
    title = models.CharField(max_length=255, verbose_name="Название")
    picture = models.URLField(null=True, blank=True, verbose_name="Изображение")
    is_right = models.BooleanField(default=False, verbose_name="Является правильным")
    right_answer = models.CharField(max_length=255, null=True, blank=True, verbose_name="Правильный ответ")
    question = models.ForeignKey(QuestionModel, on_delete=models.CASCADE, related_name='variants',
                                 verbose_name="Вопрос")

    class Meta:
        verbose_name = "Вариант ответв"
        verbose_name_plural = "Варианты ответа"


class CSTestModel(models.Model):
    COMPLEXITY = [
        ('easy', _('Легкий')),
        ('medium', _('Средний')),
        ('hard', _('Сложный')),
    ]

    name = models.CharField(max_length=255, verbose_name="Название")
    picture = models.URLField(null=True, blank=True, verbose_name="Картинка")
    topic = models.CharField(max_length=255, verbose_name="Тема")
    for_age = models.CharField(max_length=256, choices=FOR_AGES, default='16-90+', verbose_name='Для возраста')
    description = models.CharField(max_length=1024, verbose_name="Описание")
    complexity = models.CharField(max_length=256, choices=COMPLEXITY, default='easy', verbose_name='Сложность')
    user = models.ForeignKey(Users, on_delete=models.CASCADE, verbose_name="Пользователь")
    created_at = models.DateTimeField(default=now, verbose_name="Дата создания")
    required_score = models.IntegerField(default=0, verbose_name="Балл прохождения")
    questions = models.ManyToManyField(QuestionModel, related_name='tests', verbose_name="Вопросы")

    class Meta:
        verbose_name = "Тест"
        verbose_name_plural = "Тесты"


class TestResults(models.Model):
    user = models.ForeignKey(Users, on_delete=models.CASCADE, verbose_name="Пользователь")
    test = models.ForeignKey(CSTestModel, on_delete=models.CASCADE, verbose_name="Тест")
    score = models.IntegerField(verbose_name="Итоговый результат")
    app_score = models.IntegerField(default=0, verbose_name="Баллов за тест")
    created_at = models.DateTimeField(default=now)
    last_attempt = models.BooleanField()
    passed = models.BooleanField()

    class Meta:
        ordering = ['-id']
        verbose_name = "Результаты теста"
        verbose_name_plural = "Результаты тестов"


class UserAnswers(models.Model):
    test_result = models.ForeignKey(TestResults, on_delete=models.CASCADE)
    question = models.ForeignKey(QuestionModel, on_delete=models.CASCADE)
    answer = models.CharField(max_length=1024)
    is_correct = models.BooleanField()
