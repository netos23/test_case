import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_case/domain/entity/test/result_question.dart';

part 'test_result.freezed.dart';
part 'test_result.g.dart';

@freezed
class TestResult with _$TestResult {
    factory TestResult({
      @JsonKey(name: 'test_id')
      required int testId,
      required List<ResultQuestion> questions,
}) = _TestResult;

    factory TestResult.fromJson(Map<String, dynamic> json) => _$TestResultFromJson(json);
}