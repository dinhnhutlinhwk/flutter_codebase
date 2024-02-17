import 'package:logger/logger.dart';

class LoggerConfig {
  static final _instance = LoggerConfig._internal();
  LoggerConfig._internal();
  static LoggerConfig get instance => _instance;

  Logger get logger => Logger(
        printer: PrettyPrinter(
          methodCount: 0,
          errorMethodCount: 5,
          lineLength: 50,
          colors: true,
          printEmojis: true,
          printTime: true,
        ),
      );
}
