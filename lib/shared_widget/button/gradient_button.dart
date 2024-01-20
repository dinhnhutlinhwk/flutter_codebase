import 'package:flutter/material.dart';
import 'package:my_base_code/theme/colors/gradient.dart';
import 'package:my_base_code/shared_widget/button/touch_operator.dart';

class GradientButton extends StatelessWidget {
  final Widget? child;
  final double radius;
  final Function()? onTap;
  final Gradient? gradient;
  final double? height;
  final double? width;
  final EdgeInsets? padding;
  const GradientButton({
    super.key,
    this.child,
    this.onTap,
    this.height,
    this.gradient,
    this.width,
    this.radius = 120,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return TouchOperator(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          gradient: gradient ?? defaultGradient,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Center(child: child),
      ),
    );
  }
}
