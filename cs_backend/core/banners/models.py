from django.db import models
from django.utils.translation import gettext_lazy as _
from pictures.models import PictureModel


class BannerModel(models.Model):
    """A typical class defining a model, derived from the Model class."""

    id = models.AutoField(primary_key=True)
    image_url = models.CharField(max_length=256, blank=True)
    text = models.TextField(null=True, blank=True)
    images = models.ManyToManyField(PictureModel, related_name="banner_pictures", blank=True)
    link = models.TextField(blank=True, null=True, max_length=256)
    TYPES = [
        ('imageBanner', _('картинка')),
        ('buttonBanner', _('кнопка')),
        ('titleBanner', _('заголовок')),
        ('markdownBanner', _('markdown')),
        ('sliderBanner', _('слайдер')),
    ]
    type = models.CharField(max_length=256, choices=TYPES, default='image')
    sort = models.IntegerField(default=0)

    def __str__(self):
        return f'{str(self.id)}. {self.text}'
