from django.contrib import admin

from .models import Users, UserLevel


@admin.register(Users)
class UserAdmin(admin.ModelAdmin):
    list_display = ('email', 'phone', "email")


@admin.register(UserLevel)
class UserLevelAdmin(admin.ModelAdmin):
    list_display = ('level', 'score_from', "score_to")
