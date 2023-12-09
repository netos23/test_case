from rest_framework import serializers

from cstests.models import QuestionModel, VariantModel, CSTestModel


class VariantSerializer(serializers.ModelSerializer):
    class Meta:
        model = VariantModel
        exclude = ('is_right', 'right_answer', 'question')


class QuestionSerializer(serializers.ModelSerializer):
    variants = VariantSerializer(many=True)

    class Meta:
        model = QuestionModel
        exclude = ('user', 'created_at', 'sort_number')


class ISTestDetailSerializer(serializers.ModelSerializer):
    questions = QuestionSerializer(many=True)

    class Meta:
        model = CSTestModel
        exclude = ('user',)


class CSTestSerializer(serializers.ModelSerializer):
    class Meta:
        model = CSTestModel
        exclude = ('user', 'questions')


class ResultVariantSerializer(serializers.Serializer):
    id = serializers.IntegerField()
    answer = serializers.CharField(required=False)
    checked = serializers.BooleanField(default=False)


class ResultQuestionSerializer(serializers.Serializer):
    id = serializers.IntegerField()
    variants = ResultVariantSerializer(many=True)


class ResultTestRequestSerializer(serializers.Serializer):
    test_id = serializers.IntegerField()
    questions = ResultQuestionSerializer(many=True)


class ExtendedVariantSerializer(serializers.Serializer):
    id = serializers.IntegerField()
    title = serializers.CharField()
    picture = serializers.URLField(required=False)
    is_right = serializers.BooleanField(required=False)
    right_answer = serializers.CharField(required=False)
    checked = serializers.BooleanField(required=False)
    answer = serializers.CharField(required=False)


class ExtendedQuestionSerializer(serializers.ModelSerializer):
    is_correct = serializers.BooleanField()
    final_variants = ExtendedVariantSerializer(many=True)

    class Meta:
        model = QuestionModel
        exclude = ('user', 'created_at', 'sort_number')


class ResultTestResponseSerializer(serializers.Serializer):
    passed = serializers.BooleanField()
    score = serializers.FloatField()
    correct_amount = serializers.IntegerField()
    total_amount = serializers.IntegerField()
    top_percent = serializers.IntegerField()
    questions = ExtendedQuestionSerializer(many=True)
