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
    required String title,
    String? picture,
    int? id,

  }) = _Variant;

  factory Variant.fromJson(Map<String, dynamic> json) =>
      _$VariantFromJson(json);
}
