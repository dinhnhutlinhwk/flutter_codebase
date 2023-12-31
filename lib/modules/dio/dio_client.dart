import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:injectable/injectable.dart';
import 'package:my_base_code/env.dart';

Dio initDioClient(
  Env env,
) {
  final dio = Dio();

  dio.options.baseUrl = env.baseUrl;
  dio.options.connectTimeout = env.timeOut;
  dio.options.receiveTimeout = env.receiveTimeout;

  if (Platform.isAndroid || Platform.isIOS) {
    /// Allows https requests for older devices.
    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
        HttpClient()
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
  }

  if (env.environment == Environment.dev) {
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      responseBody: true,
      requestHeader: true,
      responseHeader: true,
    ));
  }

  return dio;
}
