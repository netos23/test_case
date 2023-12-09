import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_case/domain/entity/test/question.dart';

part 'test_result_response.freezed.dart';

part 'test_result_response.g.dart';

@freezed
class TestResultResponse with _$TestResultResponse {
  factory TestResultResponse({
    bool? passed,
    double? score,
    @JsonKey(name: 'correct_amount')
    int? correctAmount,
    @JsonKey(name: 'total_amount')
    int? totalAmount,
    @JsonKey(name: 'top_percent')
    int? topPercent,
    required List<Question> questions,

  }) = _TestResultResponse;

  factory TestResultResponse.fromJson(Map<String, dynamic> json) => _$TestResultResponseFromJson(json);
}
