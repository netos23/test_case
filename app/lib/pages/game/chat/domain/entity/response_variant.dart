import 'package:freezed_annotation/freezed_annotation.dart';

import 'chat_action.dart';

part 'response_variant.freezed.dart';
part 'response_variant.g.dart';

@freezed
class ResponseVariant with _$ResponseVariant {
    factory ResponseVariant({
      required String message,
      required List<ChatAction> actions,
}) = _ResponseVariant;

    factory ResponseVariant.fromJson(Map<String, dynamic> json) => _$ResponseVariantFromJson(json);
}