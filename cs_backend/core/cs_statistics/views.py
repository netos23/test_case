from rest_framework import generics

from authorization.models import UserLevel
from cs_statistics.serializers import UserLevelSerializer


# Create your views here.
class UserLevelListView(generics.ListAPIView):
    permission_classes = ()
    authentication_classes = ()
    serializer_class = UserLevelSerializer
    queryset = UserLevel.objects.all()
