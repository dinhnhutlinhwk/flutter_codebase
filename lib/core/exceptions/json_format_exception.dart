import 'package:my_base_code/core/exceptions/app_exception.dart';

class JsonFormatException extends AppException {
  JsonFormatException(String message) : super(message: message);
}
