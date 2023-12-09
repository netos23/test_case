from django.urls import path

from cs_statistics.views import UserLevelListView, UserStatsView

urlpatterns = [
    path("levels/", UserLevelListView.as_view()),
    path("user_stats/", UserStatsView.as_view())
]
