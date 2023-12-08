from rest_framework import serializers
from pictures.serializers import PictureSerializer


class BannerSerializer(serializers.Serializer):
    id = serializers.IntegerField()
    text = serializers.CharField()
    image_url = serializers.URLField()
    link = serializers.URLField()
    type = serializers.CharField()
    images = PictureSerializer(many=True)
