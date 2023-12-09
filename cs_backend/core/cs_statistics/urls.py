from django.urls import path

from cs_statistics.views import UserLevelListView

urlpatterns = [
    path("levels/", UserLevelListView.as_view()),
    path("user_stats/", UserLevelListView.as_view())
]
