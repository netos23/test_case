from drf_yasg.utils import swagger_auto_schema
from rest_framework import generics, status
from rest_framework.renderers import JSONRenderer
from rest_framework.response import Response

from utils.pagination import ApiPagination
from .models import BannerModel, SourceModel
from .serializers import BannerSerializer, SourceModelSerializer


class BannerView(generics.GenericAPIView):
    """Show all banners."""

    serializer_class = BannerSerializer
    renderer_classes = [JSONRenderer]
    permission_classes = ()
    authentication_classes = ()

    @swagger_auto_schema(responses={200: serializer_class()})
    def get(self, request):
        banners = BannerModel.objects.order_by("-sort")
        return Response(data=self.serializer_class(banners, many=True).data, status=status.HTTP_200_OK)


class SourcesListView(generics.ListAPIView):
    pagination_class = ApiPagination
    serializer_class = SourceModelSerializer
    permission_classes = ()
    authentication_classes = ()
    queryset = SourceModel.objects.all()
