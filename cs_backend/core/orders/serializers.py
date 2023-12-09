from rest_framework import serializers

from orders.models import OrderModel


class OrderSerializer(serializers.ModelSerializer):
    class Meta:
        model = OrderModel
        fields = '__all__'


class RequestOrderSerializer(serializers.ModelSerializer):
    class Meta:
        model = OrderModel
        exclude = ('user', 'price', 'status')
