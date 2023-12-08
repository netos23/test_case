from django.db import models


class PictureModel(models.Model):
    url = models.ImageField(max_length=256, upload_to='pictures/', null=True, blank=True)
    link = models.CharField(max_length=256, null=True, blank=True)

    def __str__(self):
        return f'{str(self.url)}'
