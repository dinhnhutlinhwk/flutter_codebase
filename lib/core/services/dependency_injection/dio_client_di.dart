import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:my_base_code/env.dart';
import 'package:my_base_code/core/services/dio/dio_client.dart';

@module
abstract class DioInjection {
  Dio dio(Env env) => initDioClient(env);
}
