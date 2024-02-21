import 'package:get/get.dart';
import 'package:my_base_code/core/services/dependency_injection/injector.dart';

import '../../../../data/repository/home_repository.dart';
import '../../../base/base_controller.dart';

class DashboardController extends BaseController {
  final _homeRepo = getIt<HomeRepository>();
  final _currentIndex = 0.obs;
  final _apiRepo = ''.obs;

  String get apiRepo => _apiRepo.value;
  void changeApiRepo(String repo) {
    _apiRepo.value = repo;
  }

  int get currentIndex => _currentIndex.value;
  void changeIndex(int index) {
    _currentIndex.value = index;
  }

  void callApi() {
    runAction(
        future: () async {
          return _homeRepo.getListPost();
        },
        onSuccess: (response) {
          changeApiRepo(response.toString());
        },
        handleError: true);
  }
}
