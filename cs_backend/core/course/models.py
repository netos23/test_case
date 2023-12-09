from django.db import models
from django.db.models import ForeignKey, ManyToManyField, SET_NULL

from banners.models import SourceModel
from cstests.models import CSTestModel


# Create your models here.
class Course(models.Model):
    name = models.CharField(max_length=255)
    picture = models.URLField(null=True, blank=True)
    description = models.TextField()
    educational_text = models.TextField(null=True, blank=True)
    generated_tests = models.TextField(null=True, blank=True)
    test = ForeignKey(CSTestModel, null=True, on_delete=SET_NULL, blank=True)
    sources = ManyToManyField(SourceModel, blank=True)
    certificate_template = models.URLField(null=True, blank=True)
    price = models.IntegerField(default=0)
