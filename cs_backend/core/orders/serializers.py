from rest_framework import serializers

from orders.models import OrderModel, TarifModel, PluginModel


class OrderSerializer(serializers.ModelSerializer):
    class Meta:
        model = OrderModel
        fields = '__all__'


class RequestOrderSerializer(serializers.ModelSerializer):
    class Meta:
        model = OrderModel
        exclude = ('user', 'price', 'status')


class TarifSerializer(serializers.ModelSerializer):
    class Meta:
        model = TarifModel
        fields = '__all__'


class PluginSerializer(serializers.ModelSerializer):
    class Meta:
        model = PluginModel
        fields = '__all__'
