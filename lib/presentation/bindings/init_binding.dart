import 'package:get/get.dart';
import 'package:my_base_code/presentation/common_controller/app_controller.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppController>(() => AppController());
  }
}
