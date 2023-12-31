import 'package:intl/intl.dart';

extension NumExt on num {
  String formatPrice({
    String format = '#,###',
    String locale = 'en_US',
  }) =>
      NumberFormat('#,##0.00', 'vi_Vn').format(this);

  String formatCurrency({
    String format = '#,###',
    String locale = 'en_US',
  }) =>
      NumberFormat('#,##0.00', 'vi_Vn').format(this);
}
