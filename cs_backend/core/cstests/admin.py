from django.contrib import admin
from django.utils.safestring import mark_safe

from cstests.models import QuestionModel, CSTestModel, VariantModel


@admin.register(VariantModel)
class VariantModelAdmin(admin.ModelAdmin):
    list_display = ("title", "picture_image", "is_right", "right_answer")

    def picture_image(self, obj):
        return mark_safe(f'<img src="{obj.picture or ""}" width="150" height="150" /> ')


@admin.register(QuestionModel)
class QuestionModelAdmin(admin.ModelAdmin):
    list_display = ("tests", "question", "picture_image", 'explain_answer', "sort_number", 'type')

    def picture_image(self, obj):
        return mark_safe(f'<img src="{obj.picture or ""}" width="150" height="150" /> ')


@admin.register(CSTestModel)
class ISTestModelAdmin(admin.ModelAdmin):
    list_display = ("name", "topic", "picture_image", "description", "required_score", "complexity", "for_age")

    def picture_image(self, obj):
        return mark_safe(f'<img src="{obj.picture or ""}" width="150" height="150" /> ')
