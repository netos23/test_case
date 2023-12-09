from django.urls import path

from orders import views

urlpatterns = [
    path("", views.CreateOrderAPIView.as_view()),
    path("orders/", views.ListOrderView.as_view()),
    path('orders/<int:pk>/', views.OrderDetailView.as_view(), name='order_detail')

]
