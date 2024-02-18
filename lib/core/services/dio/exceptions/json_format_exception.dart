import 'package:my_base_code/core/services/dio/exceptions/base_exception.dart';

import 'package:my_base_code/core/services/dio/exceptions/base_api_exception.dart';

class JsonFormatException extends BaseException {
  JsonFormatException(String message) : super(message: message);
}
