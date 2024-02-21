import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:my_base_code/core/services/dependency_injection/injector.dart';
import 'package:my_base_code/data/models/base_response.dart';
import 'package:my_base_code/data/models/post_model.dart';
import 'package:my_base_code/env.dart';
import 'package:retrofit/retrofit.dart';

part 'base_api.g.dart';

@lazySingleton
@RestApi()
abstract class BaseApi {
  @factoryMethod
  factory BaseApi(Dio dio) => _BaseApi(getIt<Dio>(), baseUrl: Env.baseUrl);

  @GET('/api/v1/content/list/')
  Future<BaseResp<List<PostModel>>> getListPost();
}
