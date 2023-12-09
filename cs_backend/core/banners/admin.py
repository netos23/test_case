from django.contrib import admin

from .models import BannerModel, SourceModel


@admin.register(BannerModel)
class BannerModelAdmin(admin.ModelAdmin):
    list_display = ["id", "text", "type", "sort"]


@admin.register(SourceModel)
class SourceModelAdmin(admin.ModelAdmin):
    list_display = ["id", "title", "topic", "for_age"]

