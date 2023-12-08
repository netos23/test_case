from django.urls import path

from banners import views

urlpatterns = [
    path("", views.BannerView.as_view()),
    path("sources/", views.SourcesListView.as_view())
]
