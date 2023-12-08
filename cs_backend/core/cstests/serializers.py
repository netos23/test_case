from rest_framework import serializers

from cstests.models import QuestionModel, VariantModel, CSTestModel


class VariantSerializer(serializers.ModelSerializer):
    class Meta:
        model = VariantModel
        fields = '__all__'


class QuestionSerializer(serializers.ModelSerializer):
    variants = VariantSerializer(many=True)

    class Meta:
        model = QuestionModel
        exclude = ('user', 'created_at', 'sort_number')


class ISTestDetailSerializer(serializers.ModelSerializer):
    questions = QuestionSerializer(many=True)

    class Meta:
        model = CSTestModel
        exclude = ('user')


class CSTestSerializer(serializers.ModelSerializer):
    class Meta:
        model = CSTestModel
        exclude = ('user', 'questions')
