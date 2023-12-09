from drf_yasg.utils import swagger_auto_schema
from rest_framework import generics
from rest_framework.response import Response

from recommends.serializers import RecommendsSerializer
from recommends.services import RecommendService


class RecommendView(generics.GenericAPIView):
    serializer_class = RecommendsSerializer

    @swagger_auto_schema(responses={200: serializer_class()})
    def get(self, request):
        result = RecommendService.get_recommends(request.user)
        return Response(data=self.serializer_class(result).data)
