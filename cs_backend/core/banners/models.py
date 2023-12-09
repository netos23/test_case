from django.db import models
from django.utils.translation import gettext_lazy as _

from pictures.models import PictureModel
from utils.constants import FOR_AGES


class BannerModel(models.Model):
    """A typical class defining a model, derived from the Model class."""

    id = models.AutoField(primary_key=True)
    image_url = models.CharField(max_length=256, blank=True, verbose_name="Ссылка на изображение")
    text = models.TextField(null=True, blank=True, verbose_name="Текст баннера")
    images = models.ManyToManyField(PictureModel, related_name="banner_pictures", blank=True, verbose_name="Картинки")
    link = models.TextField(blank=True, null=True, max_length=256, verbose_name="Ссылка")
    TYPES = [
        ('imageBanner', _('картинка')),
        ('buttonBanner', _('кнопка')),
        ('titleBanner', _('заголовок')),
        ('markdownBanner', _('markdown')),
        ('sliderBanner', _('слайдер')),
    ]
    type = models.CharField(max_length=256, choices=TYPES, default='image', verbose_name="Тип баннера")
    for_age = models.CharField(max_length=256, choices=FOR_AGES, default='16-90+',
                               verbose_name="Для возрастной категории")
    sort = models.IntegerField(default=0, verbose_name="Порядок в очереди")

    def __str__(self):
        return f'{str(self.id)}. {self.text}'

    class Meta:
        verbose_name = "Баннер"
        verbose_name_plural = "Баннеры"


class SourceModel(models.Model):
    url = models.CharField(max_length=1024, verbose_name="Ссылка")
    title = models.TextField(verbose_name="Название")
    topic = models.CharField(max_length=255, verbose_name="Тематика")
    profi = models.BooleanField(default=False, verbose_name="Профи")
    for_age = models.CharField(max_length=256, choices=FOR_AGES, default='16-90+',
                               verbose_name="Для возрастной категории")

    class Meta:
        verbose_name = "База знаний"
        verbose_name_plural = "Базы знаний"
