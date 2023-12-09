from rest_framework import generics, permissions, status
from rest_framework.response import Response
from rest_framework_simplejwt import authentication

from orders.models import OrderModel
from orders.serializers import OrderSerializer, RequestOrderSerializer


# Create your views here.
class CreateOrderAPIView(generics.CreateAPIView):
    serializer_class = RequestOrderSerializer
    queryset = OrderModel.objects.all()

    def create(self, request, *args, **kwargs):
        data = request.data
        serializer = self.get_serializer(data=data)
        serializer.is_valid(raise_exception=True)
        data['user'] = request.user.id
        data['status'] = 0
        data['price'] = 0
        serializer = OrderSerializer(data=data)
        serializer.is_valid()
        self.perform_create(serializer)
        headers = self.get_success_headers(serializer.data)
        return Response(serializer.data, status=status.HTTP_201_CREATED, headers=headers)


class ListOrderView(generics.ListAPIView):
    serializer_class = OrderSerializer
    queryset = OrderModel.objects.all()

    def get_queryset(self):
        """
        This view should return a list of all the purchases
        for the currently authenticated user.
        """
        user = self.request.user
        return OrderModel.objects.filter(user=user)


class OrderDetailView(generics.RetrieveAPIView):
    serializer_class = OrderSerializer

    def get_queryset(self):
        user = self.request.user
        return OrderModel.objects.filter(user=user)

    def get_object(self):
        queryset = self.get_queryset()
        order_id = self.kwargs["pk"]
        order = queryset.get(id=order_id)
        order.save()
        return order
