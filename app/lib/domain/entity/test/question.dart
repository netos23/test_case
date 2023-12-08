import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_case/domain/entity/test/variant.dart';

part 'question.freezed.dart';

part 'question.g.dart';

@freezed
class Question with _$Question {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  factory Question({
    @JsonKey(name: 'explain_answer') required String explainAnswer,
    required List<Variant> variants,
    required String question,
    String? picture,
    String? type,
    int? id,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}
