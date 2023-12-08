from django.urls import path

from cstests.views import GetAllISTestAPIView, ISTestDetailView, CheckResultView

urlpatterns = [
    path('detail/<int:id>/', ISTestDetailView.as_view(), name='istest_detail'),
    path("tests/", GetAllISTestAPIView.as_view()),
    path("check_result/", CheckResultView.as_view())
]
