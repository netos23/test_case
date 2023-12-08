from django.contrib import admin
from .models import Users


@admin.register(Users)
class UserAdmin(admin.ModelAdmin):
    list_display = ('email', 'phone', "name")
