import 'package:dio/dio.dart';
import 'package:my_base_code/core/services/dependency_injection/injector.dart';
import 'package:my_base_code/core/services/storage/hive_storage.dart';

class AuthInterceptor extends Interceptor {
  final hiveStorage = getIt<HiveStorage>();
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final accessToken = hiveStorage.token;
    options.headers['Accept-Language'] = 'vi';
    options.headers["Authorization"] = "Bearer $accessToken";
    options.headers["Connection"] = "Keep-Alive";
    options.headers["Access-Control-Allow-Origin"] = "*";
    options.headers["Access-Control-Allow-Methods"] =
        "GET,PUT,PATCH,POST,DELETE";
    options.headers["Access-Control-Allow-Headers"] =
        "Origin, X-Requested-With, Content-Type, Accept";
    options.receiveDataWhenStatusError = true;
    super.onRequest(options, handler);
  }
}
