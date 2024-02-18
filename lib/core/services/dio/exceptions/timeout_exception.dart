import 'package:my_base_code/core/services/dio/exceptions/base_api_exception.dart';
import 'package:my_base_code/core/services/dio/exceptions/base_exception.dart';

class TimeoutException extends BaseException {
  TimeoutException(String message) : super(message: message);
}
