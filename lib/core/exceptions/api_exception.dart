import 'package:my_base_code/core/exceptions/app_exception.dart';

class ApiException extends AppException {
  final int httpCode;

  ApiException({this.httpCode = -1, String message = ""})
      : super(message: message);

  @override
  String toString() {
    return message;
  }
}
