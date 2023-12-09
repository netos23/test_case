from django.urls import path

from cs_statistics.views import UserLevelListView

urlpatterns = [
    path("levels/", UserLevelListView.as_view())
]
