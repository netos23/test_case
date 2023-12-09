from rest_framework import serializers

from course.models import Course
from orders.serializers import OrderSerializer


class CourseSerializer(serializers.ModelSerializer):
    class Meta:
        model = Course
        exclude = ("generated_tests", "certificate_template")


class CourseShortSerializer(serializers.ModelSerializer):
    class Meta:
        model = Course
        fields = ("id", "name", "picture", "description")


class CourseDetailSerializer(serializers.ModelSerializer):
    payed = serializers.BooleanField(default=False)
    class Meta:
        model = Course
        exclude = ("generated_tests", "certificate_template")
