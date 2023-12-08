from django.urls import path

from orders import views

urlpatterns = [
    path("", views.CreateOrderAPIView.as_view()),
    path("orders/", views.ListOrderView.as_view()),
    path('orders/<int:pk>/', views.OrderDetailView.as_view(), name='order_detail'),
    path("tarifs/", views.GetAllTarifsAPIView.as_view()),
    path("plugins/", views.GetAllPluginsAPIView.as_view()),

]
