import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_writer/domain/models/test/answer.dart';

part 'question.freezed.dart';

part 'question.g.dart';

@freezed
class Question with _$Question {
  factory Question({
    required int id,
    String? name,
    String? description,
    String? type,
    List<Answer>? answers,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}
