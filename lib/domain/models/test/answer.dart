import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer.freezed.dart';

part 'answer.g.dart';

@freezed
class Answer with _$Answer {
  factory Answer({
    String? id,
    String? name,
    String? content,
    // по задаче сделать через union
    String? type,
    bool? isSelect,
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);
}
