import 'package:intl/intl.dart';

abstract class MfDateFormat {
  static String dateToString(DateTime date) {
    final formatter = DateFormat('dd/MM/yyyy');
    return formatter.format(date);
  }
}
