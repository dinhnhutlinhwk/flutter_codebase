import 'dart:async';

import 'package:get/get.dart';
import 'package:my_base_code/presentation/base/base_controller.dart';
import 'package:my_base_code/presentation/routers/app_router.dart';

class SplashController extends BaseController {
  @override
  void onInit() {
    super.onInit();

    Timer(const Duration(seconds: 2), () {
      Get.offNamed(RouterName.dashboardScreen);
    });
  }
}
