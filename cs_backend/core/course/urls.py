from django.urls import path, include
from rest_framework.routers import DefaultRouter

from course.views import CourseViewSet

router = DefaultRouter()
router.register(r"", CourseViewSet, basename="hotel")

urlpatterns = [
    path("", include(router.urls)),
    # path('detail/<int:id>/', ISTestDetailView.as_view(), name='istest_detail'),
    # path("tests/", GetAllISTestAPIView.as_view()),
    # path("check_result/", CheckResultView.as_view())
]
