from django.contrib import admin
from django.utils.safestring import mark_safe

from cstests.models import QuestionModel, CSTestModel, VariantModel


@admin.register(VariantModel)
class VariantModelAdmin(admin.ModelAdmin):
    list_display = ("title", "picture_image", "is_right")

    def picture_image(self, obj):
        return mark_safe(f'<img src="{obj.picture or ""}" width="150" height="150" /> ')


@admin.register(QuestionModel)
class QuestionModelAdmin(admin.ModelAdmin):
    list_display = ('user', "question", "picture_image", "sort_number", "variants")

    def picture_image(self, obj):
        return mark_safe(f'<img src="{obj.picture or ""}" width="150" height="150" /> ')


@admin.register(CSTestModel)
class ISTestModelAdmin(admin.ModelAdmin):
    list_display = ("name", "picture_image", "user", "description", "required_score")

    def picture_image(self, obj):
        return mark_safe(f'<img src="{obj.picture or ""}" width="150" height="150" /> ')
