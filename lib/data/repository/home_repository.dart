import 'package:my_base_code/presentation/base/base_repository.dart';
import 'package:my_base_code/data/models/post_model.dart';

abstract class HomeRepository {
  Future<List<PostModel>> getListPost();
}
