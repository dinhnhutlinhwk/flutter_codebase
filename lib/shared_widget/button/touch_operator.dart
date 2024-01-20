import 'package:flutter/material.dart';

class TouchOperator extends StatelessWidget {
  final Widget child;
  final Function()? onTap;

  const TouchOperator({super.key, required this.child, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: child,
    );
  }
}
