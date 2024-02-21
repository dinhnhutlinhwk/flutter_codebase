import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:injectable/injectable.dart';
import 'package:my_base_code/core/configs/duration_config.dart';
import 'package:my_base_code/env.dart';

Dio initDioClient() {
  final dio = Dio();

  dio.options.baseUrl = Env.baseUrl;
  dio.options.connectTimeout = DurationConfig.connectTimeout;
  dio.options.receiveTimeout = DurationConfig.receiveTimeout;

  if (Platform.isAndroid || Platform.isIOS) {
    /// Allows https requests for older devices.
    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
        HttpClient()
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
  }

  if (Env.environment == Environment.dev) {
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
