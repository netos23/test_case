from threading import Thread
from typing import Type

from django.contrib import admin
from django.http import HttpResponse
from django.shortcuts import redirect
from django.urls import path
from django.utils.html import format_html
from django.utils.safestring import mark_safe

from ai.base import BaseAIRequestClient
from ai.sber_gpt import SberGpt
from course.models import Course


# Register your models here.
@admin.register(Course)
class CourseAdmin(admin.ModelAdmin):
    list_display = ["id", "name", "picture_image", "educational_text", "gen_tests", "parse_tests"]

    def get_urls(self):
        urls = super(CourseAdmin, self).get_urls()
        urls += [
            path("parse/<int:course_id>", self.admin_site.admin_view(self.start_parse_view)),
            path("gen/<int:course_id>", self.admin_site.admin_view(self.start_gen_view))
        ]
        return urls

    @staticmethod
    def start_parse_view(request, course_id: int):
        course = Course.objects.get(id=course_id)
        # start_consumer(city.center_lat, city.center_lon,
        #                [category[0] for category in PlaceCategory.CATEGORY_CHOICES])
        return HttpResponse(status=201)

    @staticmethod
    def start_gen_view(request, course_id: int):
        course = Course.objects.get(id=course_id)
        llm_request_client_class: Type[BaseAIRequestClient] = SberGpt
        llm_req_client = llm_request_client_class(
            base_text=course.educational_text,
            questions_count=5,
            question_type="Вопрос с вариантами ответов и правильными ответамим",
            answers_min_cnt=3
        )
        generated_tests = llm_req_client.get_response()
        # thread = Thread(target=self._poll_task, args=(llm_req_client, desc.id), daemon=True)
        # thread.start()
        course.generated_tests = generated_tests[0]
        course.save()

        return redirect('/admin/course/course')

    @staticmethod
    def gen_tests(obj: Course):
        return format_html("<a href=\"/admin/course/course/gen/{course_id}\" target=\"_blank\">Generate tests</a>",
                           course_id=obj.id)

    @staticmethod
    def parse_tests(obj: Course):
        return format_html("<a href=\"/admin/course/course/parse/{course_id}\" target=\"_blank\">Parse tests</a>",
                           course_id=obj.id)

    # def picture_image(self, obj):
    #     return mark_safe(f'<img src="{obj.picture or ""}" width="150" height="150" /> ')
