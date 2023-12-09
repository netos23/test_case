import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_case/domain/models/test_result_response.dart';

part 'user_stat.freezed.dart';
part 'user_stat.g.dart';

@freezed
class UserStat with _$UserStat {
    factory UserStat({
      required String level,
      @JsonKey(name: 'total_score')
      required int totalScore,
      @JsonKey(name: 'passed_test_amount')
      required int passedTestAmount,
      @JsonKey(name: 'total_test_amount')
      required int totalTestAmount,
      @JsonKey(name: 'attempt_amount')
      required int attemptAmount,
      @JsonKey(name: 'easy_test_count')
      required int easyTestCount,
      @JsonKey(name: 'medium_test_count')
      required int mediumTestCount,
      @JsonKey(name: 'hard_test_count')
      required int hardTestCount,
      @JsonKey(name: 'success_results')
      required List<TestResultResponse> successResults,
}) = _UserStat;

    factory UserStat.fromJson(Map<String, dynamic> json) => _$UserStatFromJson(json);
}