from drf_yasg.utils import swagger_auto_schema
from rest_framework import generics, status
from rest_framework.renderers import JSONRenderer
from rest_framework.response import Response

from .models import BannerModel
from .serializers import BannerSerializer


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
