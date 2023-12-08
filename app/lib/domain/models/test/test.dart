import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_case/domain/models/test/question.dart';

part 'test.freezed.dart';

part 'test.g.dart';

@freezed
class Test with _$Test {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory Test({
    required String email,
    String? id,
    String? description,
    String? name,
    String? type,
    String? picture,
    // мб будет подгружать каждый вопрос отдельно
    List<Question>? questions,

  }) = _Test;

  factory Test.fromJson(Map<String, dynamic> json) =>
      _$TestFromJson(json);
}
