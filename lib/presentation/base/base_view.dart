import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_base_code/presentation/base/base_controller.dart';
import 'dart:ui' as ui;

abstract class BaseView<Controller extends BaseController>
    extends GetView<Controller> {
  const BaseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        buildView(context),
        Obx(() => controller.isLoading ? _buildLoading() : const SizedBox()),
      ],
    );
  }

  Widget buildView(BuildContext context);

  Widget _buildLoading() {
    return Container(
      color: Colors.black.withOpacity(0.5),
      alignment: Alignment.center,
      child: const Center(
        child: IntrinsicWidth(
          child: IntrinsicHeight(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
