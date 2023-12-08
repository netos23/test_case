from django.db import models
from django.utils.timezone import now

from authorization.models import Users


class QuestionModel(models.Model):
    user = models.ForeignKey(Users, on_delete=models.CASCADE)
    created_at = models.DateTimeField(default=now)
    question = models.CharField(max_length=255)
    picture = models.URLField(null=True, blank=True)
    sort_number = models.IntegerField()

    class Meta:
        ordering = ['sort_number', 'id']


class VariantModel(models.Model):
    title = models.CharField(max_length=255)
    picture = models.URLField(null=True, blank=True)
    is_right = models.BooleanField(default=False)
    question = models.ForeignKey(QuestionModel, on_delete=models.CASCADE, related_name='variants')


class CSTestModel(models.Model):
    name = models.CharField(max_length=255)
    description = models.CharField(max_length=1024)
    user = models.ForeignKey(Users, on_delete=models.CASCADE)
    created_at = models.DateTimeField(default=now)
    required_score = models.IntegerField(default=0)
    questions = models.ManyToManyField(QuestionModel, related_name='tests')
