import 'package:my_base_code/core/services/dio/exceptions/base_exception.dart';

class NetworkException extends BaseException {
  NetworkException(String message) : super(message: message);
}
