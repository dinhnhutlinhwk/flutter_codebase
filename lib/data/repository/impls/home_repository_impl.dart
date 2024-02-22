import 'package:injectable/injectable.dart';
import 'package:my_base_code/data/repository/base_repository.dart';
import 'package:my_base_code/core/services/dependency_injection/injector.dart';
import 'package:my_base_code/data/models/post_model.dart';
import 'package:my_base_code/data/remote/base_api.dart';
import 'package:my_base_code/data/repository/home_repository.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl extends BaseRepository implements HomeRepository {
  final BaseApi api = getIt<BaseApi>();
  @override
  Future<List<PostModel>> getListPost() async {
    final data = apiExecute(
      () => api.getListPost(),
    );
    return data;
  }
}
