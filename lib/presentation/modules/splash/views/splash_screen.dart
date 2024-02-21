import 'package:flutter/material.dart';
import 'package:my_base_code/presentation/base/base_view.dart';
import 'package:my_base_code/presentation/modules/splash/controllers/splash_controller.dart';

class SplashScreen extends BaseView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget buildView(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Splash Screen'),
      ),
    );
  }
}
