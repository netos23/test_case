import json
import time

from drf_yasg.utils import swagger_auto_schema
from rest_framework import generics, serializers, status
from rest_framework.response import Response
from yookassa import Configuration
from yookassa import Payment
from yookassa.domain.exceptions import ApiError

Configuration.account_id = 323736
Configuration.secret_key = "test_iqimEZk1zPrULVRYfpmgaM8jdATwTkGjJ4S-YkIZy8c"
from utils.exceptions import BaseRestException
from orders.models import OrderModel


class PaymentCreateView(generics.GenericAPIView):
    class PaymentsCreateSerializer(serializers.Serializer):
        id = serializers.IntegerField(required=True)

    class PaymentResponse(serializers.Serializer):
        url = serializers.URLField()
        success_url = serializers.URLField()
        failed_url = serializers.URLField()

    @swagger_auto_schema(responses={200: serializers.Serializer()}, request_body=PaymentsCreateSerializer)
    def post(self, request):
        id = self.request.data.get('id')
        order = OrderModel.objects.get(id=id)
        order.status = 2
        order.save()
        ans = self.ukassa(id, order.price)
        return Response(
            self.PaymentResponse({"url": ans["url"], "success_url": "/success", "failed_url": "/failed"}).data,
            status.HTTP_200_OK)

    def ukassa(self, order_id, price, *args, **kwargs):
        bank_order_id = f'{order_id}_{int(time.time())}'
        try:
            resp = Payment.create({
                "amount": {
                    "value": price,
                    "currency": "RUB"
                },
                "payment_method_data": {
                    "type": "bank_card"
                },
                "confirmation": {
                    "type": "redirect",
                    "return_url": self.request.build_absolute_uri(f'/payments/callback?order_id={order_id}')
                },
                "capture": True,
                "description": f"Order #{order_id}"
            })
            resp_json = json.loads(resp.json())
            resp_json['url'] = resp.confirmation.confirmation_url
            resp_json['bankOrderUid'] = resp.id
            resp_json['bankOrderId'] = bank_order_id
            resp_json['order_method'] = 'ukassa'
            return resp_json
        except ApiError as ex:
            ex_json = dict(*ex.args)
            raise BaseRestException(ex_json.get('description'), status_code=400)


class CallbackView(generics.GenericAPIView):
    class CallbackSerializer(serializers.Serializer):
        order_id = serializers.CharField(required=True)

    @swagger_auto_schema(responses={200: serializers.Serializer()}, query_serializer=CallbackSerializer())
    def get(self, request):
        serializer = self.CallbackSerializer(request.query_params)
        order_id = serializer.data.get("order_id")
        order = OrderModel.objects.get(id=order_id)

        order.status = 3
        order.save()
        return Response(status=status.HTTP_204_NO_CONTENT)
