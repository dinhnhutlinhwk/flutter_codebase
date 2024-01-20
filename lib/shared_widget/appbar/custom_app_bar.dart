import 'package:flutter/widgets.dart';
import 'package:my_base_code/utils/sizer.dart';

class CustomAppBar extends StatelessWidget {
  final Widget? centerChild;
  final Widget? leading;
  final List<Widget>? actions;

  const CustomAppBar({
    Key? key,
    this.centerChild,
    this.leading,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SafeArea(
          bottom: false,
          child: SizedBox(),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 20.w,
              ),
              leading ?? SizedBox(width: 40.w),
              Expanded(
                child: Center(child: centerChild ?? const SizedBox()),
              ),
              if (actions != null)
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: actions!,
                ),
              SizedBox(
                width: 20.w,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
