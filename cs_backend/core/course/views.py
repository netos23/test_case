from django.shortcuts import render
from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticatedOrReadOnly
from rest_framework_simplejwt.authentication import JWTAuthentication

from course.models import Course
from course.serializers import CourseSerializer, CourseShortSerializer
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
        return CourseSerializer
