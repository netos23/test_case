from django.urls import path

from .views import (
    JWTRefreshView,
    UserView, RegisterUserView, EmailPart1View, EmailPart2View
)

urlpatterns = [
    path("token/refresh", JWTRefreshView.as_view(), name="token_refresh"),
    path("user", UserView.as_view(), name="user"),
    path("register", RegisterUserView.as_view(), name="register"),
    path("part1", EmailPart1View.as_view(), name="email-part1"),
    path("part2", EmailPart2View.as_view(), name="email-part2"),
]
