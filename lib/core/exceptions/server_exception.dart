import 'package:my_base_code/core/exceptions/app_exception.dart';

class ServerException extends AppException {
  ServerException({String message = ""}) : super(message: message);
}
