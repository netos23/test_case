import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_payment.freezed.dart';
part 'order_payment.g.dart';

@freezed
class OrderPayment with _$OrderPayment {
    factory OrderPayment({
      required int course,
}) = _OrderPayment;

    factory OrderPayment.fromJson(Map<String, dynamic> json) => _$OrderPaymentFromJson(json);
}