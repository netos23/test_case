from rest_framework import serializers

from banners.models import SourceModel
from pictures.serializers import PictureSerializer
from utils.constants import FOR_AGES


class BannerSerializer(serializers.Serializer):
    id = serializers.IntegerField()
    text = serializers.CharField()
    image_url = serializers.URLField()
    link = serializers.URLField()
    type = serializers.CharField()
    images = PictureSerializer(many=True)
    for_age = serializers.ChoiceField(choices=FOR_AGES)


class SourceModelSerializer(serializers.ModelSerializer):
    class Meta:
        model = SourceModel
        fields = '__all__'
