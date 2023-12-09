from django.db import models
from django.db.models import ForeignKey, ManyToManyField, SET_NULL
from django.utils.safestring import mark_safe

from banners.models import SourceModel
from cstests.models import CSTestModel


# Create your models here.
class Course(models.Model):
    name = models.CharField(max_length=255, verbose_name='Название курса')
    picture = models.URLField(null=True, blank=True, verbose_name='Изображение')
    description = models.TextField(verbose_name='Описание')
    educational_text = models.TextField(null=True, blank=True, verbose_name='Обучающий текст')
    generated_tests = models.TextField(null=True, blank=True, verbose_name='Сгенерированные вопросы')
    test = ForeignKey(CSTestModel, null=True, on_delete=SET_NULL, blank=True, verbose_name='Связанный тест')
    sources = ManyToManyField(SourceModel, blank=True, verbose_name='Обучающие материалы')
    certificate_template = models.URLField(null=True, blank=True, verbose_name='Шаблон сертификата')
    price = models.IntegerField(default=0, verbose_name='Цена курса')


    def picture_image(self):
        return mark_safe(f'<img src="{self.picture or ""}" width="150" height="150" /> ')

    picture_image.short_name = 'Превью'

    class Meta:
        verbose_name = "Курс"
        verbose_name_plural = "Курсы"
