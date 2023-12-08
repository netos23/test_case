import 'package:decimal/decimal.dart';
import 'package:decimal/intl.dart';
import 'package:intl/intl.dart';

extension MoneyExtensions on Decimal {
  String formatMoney() {
    final formatCurrency = NumberFormat.simpleCurrency(
      decimalDigits: 2,
      name: '\u20bd',
      locale: 'ru',
    );

    return formatCurrency.format(
      DecimalIntl(this),
    );
  }
}
