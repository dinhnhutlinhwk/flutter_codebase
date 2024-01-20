import 'package:flutter/material.dart';
import 'package:my_base_code/utils/sizer.dart';
import 'package:my_base_code/shared_widget/button/touch_operator.dart';

class CircelButton extends StatelessWidget {
  final Widget child;
  final Function()? onTap;
  final double? size;
  final Color? firstColor;
  final Color? secondColor;
  final Alignment? begin;
  final Alignment? end;

  const CircelButton({
    Key? key,
    required this.child,
    this.onTap,
    this.size,
    this.firstColor,
    this.secondColor,
    this.begin,
    this.end,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TouchOperator(
      onTap: onTap,
      child: Container(
        height: size ?? 40.sp,
        width: size ?? 40.sp,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                firstColor ?? const Color(0xff0EFFFF).withOpacity(0.58),
                secondColor ?? const Color(0xff124DE3).withOpacity(0.58)
              ],
              begin: begin ?? Alignment.topCenter,
              end: end ?? Alignment.bottomCenter),
          shape: BoxShape.circle,
        ),
        child: Center(child: child),
      ),
    );
  }
}
