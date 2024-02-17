extension StringExt on String {
  static String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

  int toInt() => int.parse(this);
  double toDouble() => double.parse(this);

  DateTime toDateTime() => DateTime.parse(this);
}
