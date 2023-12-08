from django.urls import path

from cstests.views import GetAllISTestAPIView, ISTestDetailView

urlpatterns = [
    path('detail/<int:pk>/', ISTestDetailView.as_view(), name='istest_detail'),
    path("tests/", GetAllISTestAPIView.as_view())
]
