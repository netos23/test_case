from django.urls import path, include
from rest_framework.routers import DefaultRouter

from course.views import CourseViewSet

router = DefaultRouter()
router.register(r"", CourseViewSet, basename="hotel")

urlpatterns = [
    path("", include(router.urls)),
]
