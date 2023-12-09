import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_variant.freezed.dart';
part 'result_variant.g.dart';

@freezed
class ResultVariant with _$ResultVariant {
    factory ResultVariant({
      required int id,
      String? answer,
      bool? checked,
}) = _ResultVariant;

    factory ResultVariant.fromJson(Map<String, dynamic> json) => _$ResultVariantFromJson(json);
}