import 'package:envify/envify.dart';
import 'package:injectable/injectable.dart';

@Envify()
abstract class Env {
  final String baseUrl = '';
  final String environment = Environment.dev;
  final timeOut = const Duration(minutes: 3);
  final receiveTimeout = const Duration(minutes: 3);
}
