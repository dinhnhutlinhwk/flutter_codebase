import 'package:envify/envify.dart';
import 'package:injectable/injectable.dart';

abstract class Env {
  static const String baseUrl = 'http://103.11.199.134:8003';
  static const String environment = Environment.dev;
}
