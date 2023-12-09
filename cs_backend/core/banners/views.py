from drf_yasg.utils import swagger_auto_schema
from rest_framework import generics, status
from rest_framework.permissions import IsAuthenticatedOrReadOnly, AllowAny
from rest_framework.renderers import JSONRenderer
from rest_framework.response import Response

from utils.constants import age_profi_filtering
from utils.elastic_client import ElasticClient
from utils.pagination import ApiPagination
from .models import BannerModel, SourceModel
from .serializers import BannerSerializer, SourceModelSerializer


class BannerView(generics.GenericAPIView):
    """Show all banners."""

    serializer_class = BannerSerializer
    renderer_classes = [JSONRenderer]
    permission_classes = ()

    @swagger_auto_schema(responses={200: serializer_class()})
    def get(self, request):
        banners = BannerModel.objects.order_by("-sort")
        banners = age_profi_filtering(banners, request.user)
        return Response(data=self.serializer_class(banners, many=True).data, status=status.HTTP_200_OK)


class SourcesListView(generics.ListAPIView):
    pagination_class = ApiPagination
    serializer_class = SourceModelSerializer
    permission_classes = ()
    lookup_url_kwarg = "search"

    def get_queryset(self):
        search = self.request.query_params.get(self.lookup_url_kwarg)
        sources = SourceModel.objects.all()
        sources = age_profi_filtering(sources, self.request.user)
        if search:
            client = ElasticClient(index='sources')
            result_ids = client.search_sources(search)
            sources = sources.filter(pk__in=result_ids)
        return sources
