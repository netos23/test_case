from django.contrib import admin

from .models import Users, UserLevel


@admin.register(Users)
class UserAdmin(admin.ModelAdmin):
    list_display = ('email', 'phone', "name")


admin.site.register(UserLevel)
