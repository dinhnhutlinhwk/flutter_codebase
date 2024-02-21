import 'package:my_base_code/core/services/dio/exceptions/base_exception.dart';

class AppException extends BaseException {
  AppException({
    String message = "",
  }) : super(message: message);

  @override
  String toString() {
    return message;
  }
}
