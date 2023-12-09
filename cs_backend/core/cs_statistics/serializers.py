from rest_framework import serializers

from authorization.models import UserLevel


class UserLevelSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserLevel
        fields = '__all__'


class TestResultResponseSerializer(serializers.Serializer):
    created_at = serializers.DateTimeField()
    test = serializers.CharField()
    score = serializers.IntegerField()


class UserStatsSerializer(serializers.Serializer):
    level = serializers.CharField()
    total_score = serializers.IntegerField()
    passed_test_amount = serializers.IntegerField()
    total_test_amount = serializers.IntegerField()
    attempt_amount = serializers.IntegerField()
    easy_test_count = serializers.IntegerField()
    medium_test_count = serializers.IntegerField()
    hard_test_count = serializers.IntegerField()
    success_results = TestResultResponseSerializer(many=True)
