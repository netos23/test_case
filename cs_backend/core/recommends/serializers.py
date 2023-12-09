from rest_framework import serializers

from banners.serializers import SourceModelSerializer


class RecommendsSerializer(serializers.Serializer):
    title = serializers.CharField()
    sources = SourceModelSerializer(many=True)
