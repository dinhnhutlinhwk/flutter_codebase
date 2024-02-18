import 'package:get/get.dart';

import '../../../base/base_controller.dart';

class DashboardController extends BaseController {
  final _currentIndex = 0.obs;
  final _count = 0.obs;

  int get count => _count.value;
  void increment() {
    runAction<void>(
      future: Future.delayed(const Duration(seconds: 3)),
      onSuccess: (value) {
        _count.value++;
        Get.snackbar('HHH', 'HHH');
      },
      isShowLoading: true,
      onError: (exception) {
        Get.snackbar('Error', exception.toString());
      },
    );
  }

  int get currentIndex => _currentIndex.value;
  void changeIndex(int index) {
    _currentIndex.value = index;
  }
}
