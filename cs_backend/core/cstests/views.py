from drf_yasg.utils import swagger_auto_schema
from rest_framework import generics
from rest_framework.response import Response

from cstests.models import CSTestModel
from cstests.serializers import CSTestSerializer, ISTestDetailSerializer, ResultTestResponseSerializer, \
    ResultTestRequestSerializer
from cstests.services import CService
from utils.constants import age_profi_filtering
from utils.elastic_client import ElasticClient


class GetAllISTestAPIView(generics.ListAPIView):
    serializer_class = CSTestSerializer
    lookup_url_kwarg = "search"

    def get_queryset(self):
        search = self.request.query_params.get(self.lookup_url_kwarg)
        tests = CSTestModel.objects.all()
        tests = age_profi_filtering(tests, self.request.user)
        if search:
            client = ElasticClient(index='tests')
            result_ids = client.search_tests(search)
            tests = tests.filter(pk__in=result_ids)
        return tests


class ISTestDetailView(generics.RetrieveAPIView):
    serializer_class = ISTestDetailSerializer
    queryset = CSTestModel.objects.all()

    def get_object(self):
        queryset = self.get_queryset()
        istest_id = self.kwargs["id"]
        istest = queryset.prefetch_related('questions', 'questions__variants').get(id=istest_id)
        return istest


class CheckResultView(generics.GenericAPIView):
    serializer_class = ResultTestResponseSerializer

    @swagger_auto_schema(
        request_body=ResultTestRequestSerializer, responses={200: serializer_class()}
    )
    def post(self, request, *args, **kwargs):
        serializer = ResultTestRequestSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        result = CService.check_result(serializer.validated_data, self.request.user)
        return Response(data=self.serializer_class(result).data)
