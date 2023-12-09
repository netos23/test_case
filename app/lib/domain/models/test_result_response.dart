import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_result_response.freezed.dart';

part 'test_result_response.g.dart';

@freezed
class TestResultResponse with _$TestResultResponse {
  factory TestResultResponse({
    @JsonKey(name: 'created_at') required String createdAt,
    required String test,
    required int score,
  }) = _TestResultResponse;

  factory TestResultResponse.fromJson(Map<String, dynamic> json) =>
      _$TestResultResponseFromJson(json);
}
