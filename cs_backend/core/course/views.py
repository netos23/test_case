from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticatedOrReadOnly
from rest_framework_simplejwt.authentication import JWTAuthentication
from rest_framework.response import Response
from course.models import Course
from course.serializers import CourseSerializer, CourseShortSerializer, CourseDetailSerializer
from orders.models import OrderModel
from utils.pagination import ApiPagination


# Create your views here.

class CourseViewSet(viewsets.ModelViewSet):
    serializer_class = CourseSerializer
    queryset = Course.objects.all().order_by("-id")
    pagination_class = ApiPagination
    permission_classes = [IsAuthenticatedOrReadOnly]
    authentication_classes = [JWTAuthentication]

    def get_serializer_class(self):
        if self.action == 'list':
            return CourseShortSerializer
        elif self.request.method.lower() == "get":
            return CourseDetailSerializer
        return CourseSerializer

    def retrieve(self, request, *args, **kwargs):
        # do your customization here
        instance = self.get_object()
        serializer = self.get_serializer(instance)
        data = serializer.data
        if request.auth and request.auth.get("user_id"):
            order = OrderModel.objects.filter(user_id=request.auth.get("user_id"), course_id=data['id']).first()
            if order is not None:
                data['payed'] = order.status == 2
        if not data.get('payed') and data.get('price', 0) > 0:
            data['educational_text'] = ''
            data['sources'] = []
        return Response(data)
