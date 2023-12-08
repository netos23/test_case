from rest_framework import generics

from cstests.models import CSTestModel
from cstests.serializers import CSTestSerializer
from orders.serializers import OrderSerializer


class GetAllISTestAPIView(generics.ListAPIView):
    serializer_class = CSTestSerializer
    queryset = CSTestModel.objects.all()


class ISTestDetailView(generics.RetrieveAPIView):
    serializer_class = OrderSerializer
    queryset = CSTestModel.objects.all()

    def get_object(self):
        queryset = self.get_queryset()
        istest_id = self.kwargs["id"]
        istest = queryset.prefetch_related('questions', 'questions__variants').get(id=istest_id)
        return istest
