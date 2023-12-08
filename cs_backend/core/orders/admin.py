from django.contrib import admin
from django.utils.safestring import mark_safe

from orders.models import TarifModel, OrderModel, PluginModel


@admin.register(TarifModel)
class TarifModelAdmin(admin.ModelAdmin):
    list_display = ('id', "name", "picture_image", "base_price", "per_photo", "description")
    def picture_image(self, obj):
        return mark_safe(f'<img src="{obj.picture or ""}" width="150" height="150" /> ')


@admin.register(OrderModel)
class OrderModelAdmin(admin.ModelAdmin):
    list_display = ('id', "user", "tarif", "created_at")


@admin.register(PluginModel)
class PluginModelAdmin(admin.ModelAdmin):
    list_display = ('id', "name", "picture_image", "per_photo", "description", "link")

    def picture_image(self, obj):
        return mark_safe(f'<img src="{obj.picture or ""}" width="150" height="150" /> ')


