from django.urls import path

from recommends import views

urlpatterns = [
    path("", views.RecommendView.as_view()),
]
