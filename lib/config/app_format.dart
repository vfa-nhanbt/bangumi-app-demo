import 'package:intl/intl.dart';

class AppFormat {
  AppFormat._internal();

  /// Ex: `15/03 (Mar) 12:30`
  static final DateFormat formatDateTime = DateFormat("dd/MM (MMM) HH:mm");

  /// Ex. `12:30`
  static final DateFormat formatTime = DateFormat("HH:mm");
}
