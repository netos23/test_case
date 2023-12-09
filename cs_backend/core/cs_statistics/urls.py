from django.urls import path

from cs_statistics.views import UserLevelListView, UserStatsView, TopUsersView

urlpatterns = [
    path("levels/", UserLevelListView.as_view()),
    path("user_stats/", UserStatsView.as_view()),
    path("top_users/", TopUsersView.as_view())
]
