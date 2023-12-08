from django.contrib import admin

from .models import BannerModel, SourceModel

admin.site.register(BannerModel)
admin.site.register(SourceModel)
