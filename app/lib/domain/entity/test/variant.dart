import 'package:freezed_annotation/freezed_annotation.dart';

part 'variant.freezed.dart';

part 'variant.g.dart';

@freezed
class Variant with _$Variant {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  factory Variant({
    String? title,
    String? picture,
    int? id,
    @JsonKey(name: 'is_right')
    bool? isRight,

    @JsonKey(name: 'right_answer')
    String? rightAnswer,

    @JsonKey(name: 'is_correct')
    bool? isCorrect,
    bool? checked,
    String? answer,
  }) = _Variant;

  factory Variant.fromJson(Map<String, dynamic> json) =>
      _$VariantFromJson(json);
}
