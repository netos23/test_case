import 'package:freezed_annotation/freezed_annotation.dart';

part 'test.freezed.dart';

part 'test.g.dart';

@freezed
class Test with _$Test {
  factory Test({
    required int id,
    required String name,
    required String topic,
    required String description,
    String? picture,
    @JsonKey(name: 'for_age')
    String? forAge,
    String? complexity,
    @JsonKey(name: 'created_at')
    String? createdAt,
    int? requiredScore,
  }) = _Test;

  factory Test.fromJson(Map<String, dynamic> json) => _$TestFromJson(json);
}
