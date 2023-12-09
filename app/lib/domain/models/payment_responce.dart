import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_responce.freezed.dart';
part 'payment_responce.g.dart';

@freezed
class PaymentResponse with _$PaymentResponse {
    factory PaymentResponse({
      required String url,
      @JsonKey(name: 'success_url')
      required String successUrl,
      @JsonKey(name: 'failed_url')
      required String failedUrl,
}) = _PaymentResponse;

    factory PaymentResponse.fromJson(Map<String, dynamic> json) => _$PaymentResponseFromJson(json);
}