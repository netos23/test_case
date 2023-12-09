import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_case/domain/entity/test/variant.dart';
import 'package:test_case/domain/models/source.dart';

part 'recommends.freezed.dart';

part 'recommends.g.dart';

@freezed
class Recommends with _$Recommends {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  factory Recommends({
    String? title,
    List<Source>? sources,
  }) = _Recommends;

  factory Recommends.fromJson(Map<String, dynamic> json) =>
      _$RecommendsFromJson(json);
}
