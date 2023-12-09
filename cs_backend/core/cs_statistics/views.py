from drf_yasg.utils import swagger_auto_schema
from rest_framework import generics
from rest_framework.response import Response

from authorization.models import UserLevel
from cs_statistics.serializers import UserLevelSerializer, UserStatsSerializer
from cs_statistics.services import StatisticService


class UserLevelListView(generics.ListAPIView):
    permission_classes = ()
    authentication_classes = ()
    serializer_class = UserLevelSerializer
    queryset = UserLevel.objects.all()


class UserStatsView(generics.GenericAPIView):
    serializer_class = UserStatsSerializer

    @swagger_auto_schema(responses={200: serializer_class()})
    def get(self, request):
        result = StatisticService.get_statistics(request.user)
        return Response(data=self.serializer_class(result).data)
