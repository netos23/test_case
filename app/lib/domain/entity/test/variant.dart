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
    @JsonKey(name: 'question')
    required int questionId,
    required String title,
    String? picture,
    @JsonKey(name: 'is_right')
    bool? isRight,
    @JsonKey(name: 'right_answer')
    String? rightAnswer,
    int? id,

  }) = _Variant;

  factory Variant.fromJson(Map<String, dynamic> json) =>
      _$VariantFromJson(json);
}
