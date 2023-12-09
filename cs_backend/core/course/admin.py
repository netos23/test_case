from django.contrib import admin
from django.http import HttpResponse
from django.urls import path
from django.utils.html import format_html
from django.utils.safestring import mark_safe

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
    def start_parse_view(request, city_id: int):
        city = Course.objects.get(id=city_id)
        # start_consumer(city.center_lat, city.center_lon,
        #                [category[0] for category in PlaceCategory.CATEGORY_CHOICES])
        return HttpResponse(status=201)

    @staticmethod
    def start_gen_view(request, city_id: int):
        city = Course.objects.get(id=city_id)
        # start_consumer(city.center_lat, city.center_lon,
        #                [category[0] for category in PlaceCategory.CATEGORY_CHOICES])
        return HttpResponse(status=201)
    @staticmethod
    def gen_tests(obj: Course):
        return format_html("<a href=\"/admin/course/gen/{course_id}\" target=\"_blank\">Generate tests</a>",
                           course_id=obj.id)

    @staticmethod
    def parse_tests(obj: Course):
        return format_html("<a href=\"/admin/course/parse/{course_id}\" target=\"_blank\">Parse tests</a>",
                           course_id=obj.id)

    def picture_image(self, obj):
        return mark_safe(f'<img src="{obj.picture or ""}" width="150" height="150" /> ')
