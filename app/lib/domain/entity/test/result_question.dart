import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_case/domain/entity/test/result_variant.dart';

part 'result_question.freezed.dart';
part 'result_question.g.dart';

@freezed
class ResultQuestion with _$ResultQuestion {
    factory ResultQuestion({
      required int id,
      required List<ResultVariant> variants,
}) = _ResultQuestion;

    factory ResultQuestion.fromJson(Map<String, dynamic> json) => _$ResultQuestionFromJson(json);
}