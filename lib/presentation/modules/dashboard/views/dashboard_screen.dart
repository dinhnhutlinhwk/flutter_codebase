import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_base_code/presentation/base/base_view.dart';

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
            Obx(() => Text('Current index: ${controller.apiRepo}')),
            ElevatedButton(
              onPressed: () {
                print('Change index');
                controller.callApi();
              },
              child: const Text('Call API'),
            ),
          ],
        ),
      ),
    );
  }
}
