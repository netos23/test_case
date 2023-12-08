from django.db import models
from django.utils.timezone import now
from django.utils.translation import gettext_lazy as _

from authorization.models import Users


class QuestionModel(models.Model):
    TYPES = [
        ('single_checked', _('Один верный')),
        ('multiple_checked', _('Много верных вариантов')),
        ('text', _('Текстовый ответ')),
    ]
    user = models.ForeignKey(Users, on_delete=models.CASCADE)
    created_at = models.DateTimeField(default=now)
    type = models.CharField(max_length=256, choices=TYPES, default='single_checked')
    question = models.CharField(max_length=255)
    explain_answer = models.CharField(max_length=1024)
    picture = models.URLField(null=True, blank=True)
    sort_number = models.IntegerField()

    class Meta:
        ordering = ['sort_number', 'id']


class VariantModel(models.Model):
    title = models.CharField(max_length=255)
    picture = models.URLField(null=True, blank=True)
    is_right = models.BooleanField(default=False)
    right_answer = models.CharField(max_length=255, null=True, blank=True)
    question = models.ForeignKey(QuestionModel, on_delete=models.CASCADE, related_name='variants')


class CSTestModel(models.Model):
    COMPLEXITY = [
        ('easy', _('Легкий')),
        ('medium', _('Средний')),
        ('hard', _('Сложный')),
    ]

    FOR_AGES = [
        ('6-12+', _('6-12+')),
        ('13-16+', _('13-16+')),
        ('16-90+', _('16-90+')),
    ]
    name = models.CharField(max_length=255)
    picture = models.URLField(null=True, blank=True)
    topic = models.CharField(max_length=255)
    for_age = models.CharField(max_length=256, choices=FOR_AGES, default='16-90+', verbose_name='Для возраста')
    description = models.CharField(max_length=1024)
    complexity = models.CharField(max_length=256, choices=COMPLEXITY, default='easy', verbose_name='Сложность')
    user = models.ForeignKey(Users, on_delete=models.CASCADE)
    created_at = models.DateTimeField(default=now)
    required_score = models.IntegerField(default=0)
    questions = models.ManyToManyField(QuestionModel, related_name='tests')
