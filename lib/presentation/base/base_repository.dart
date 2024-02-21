import 'package:my_base_code/core/exceptions/api_exception.dart';
import 'package:my_base_code/data/models/base_response.dart';

abstract class BaseRepository {
  Future<T> apiExecute<T>(Future<BaseResp<T>> Function() apiCall) async {
    final response = await apiCall();
    if (response.code != 200 && response.code != 201) {
      throw ApiException(
        httpCode: response.code ?? -1,
        message: response.message ?? "",
      );
    }
    return response.data as T;
  }
}
