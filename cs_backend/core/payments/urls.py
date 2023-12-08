from django.urls import path

from payments.views import  PaymentCreateView, CallbackView

urlpatterns = [
    path("pay/", PaymentCreateView.as_view()),
    path("callback", CallbackView.as_view()),

]
