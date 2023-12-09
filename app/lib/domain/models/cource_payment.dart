import 'package:freezed_annotation/freezed_annotation.dart';

part 'cource_payment.freezed.dart';

part 'cource_payment.g.dart';

@freezed
class CourcePayment with _$CourcePayment {
  factory CourcePayment({
    required int id,
  }) = _CourcePayment;

  factory CourcePayment.fromJson(Map<String, dynamic> json) =>
      _$CourcePaymentFromJson(json);
}
