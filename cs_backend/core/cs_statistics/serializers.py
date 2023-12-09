from rest_framework import serializers

from authorization.models import UserLevel


class UserLevelSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserLevel
        fields = '__all__'
