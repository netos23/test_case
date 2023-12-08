from rest_framework import serializers


class PictureSerializer(serializers.Serializer):
    id = serializers.IntegerField()
    url = serializers.URLField()
    link = serializers.URLField()
