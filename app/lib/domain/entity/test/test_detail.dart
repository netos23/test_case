import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_case/domain/entity/test/question.dart';

part 'test_detail.freezed.dart';

part 'test_detail.g.dart';

@freezed
class TestDetail with _$TestDetail {
  factory TestDetail({
    int? id,
    required List<Question> questions,
    required String description,
    required String name,
    required String topic,
    String? picture,
    @JsonKey(name: 'for_age')
    String? forAge,
    String? complexity,
    @JsonKey(name: 'created_at')
    String? createdAt,
    int? requiredScore,
  }) = _TestDetail;

  factory TestDetail.fromJson(Map<String, dynamic> json) =>
      _$TestDetailFromJson(json);
}
