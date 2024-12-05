import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get brazilianFormat {
    return DateFormat("dd/MM/yyyy").format(this);
  }
}
