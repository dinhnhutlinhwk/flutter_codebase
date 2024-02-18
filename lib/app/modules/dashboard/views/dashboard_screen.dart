import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_base_code/app/base/base_view.dart';

import '../index.dart';

class DashboardScreen extends BaseView<DashboardController> {
  const DashboardScreen({super.key});

  @override
  Widget buildView(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Dashboard Screen'),
            ElevatedButton(
              onPressed: () {
                controller.increment();
              },
              child: Obx(() => Text('Counter: ${controller.count}')),
            ),
          ],
        ),
      ),
    );
  }
}
