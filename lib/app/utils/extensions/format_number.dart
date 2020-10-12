import 'package:intl/intl.dart';

extension FormatNumber on num {
  String currencyPrice() =>
      NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$', decimalDigits: 2)
          .format(this);
}
