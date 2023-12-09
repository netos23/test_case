from django.contrib import admin
from django.utils.safestring import mark_safe

from orders.models import OrderModel


@admin.register(OrderModel)
class OrderModelAdmin(admin.ModelAdmin):
    list_display = ('id', "user", "price", "created_at")
