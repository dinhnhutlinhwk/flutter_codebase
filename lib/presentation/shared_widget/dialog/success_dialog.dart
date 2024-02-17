import 'package:flutter/material.dart';
import 'package:my_base_code/core/utils/sizer.dart';
import 'package:my_base_code/core/assets/assets.dart';
import 'package:my_base_code/core/assets/assets_view.dart';
import 'package:my_base_code/core/theme/colors/app_color.dart';
import 'package:my_base_code/core/theme/texts/text_styles.dart';
import 'package:my_base_code/presentation/shared_widget/button/gradient_button.dart';

class SuccessDialog extends StatelessWidget {
  final String? title;
  final String? content;
  final TextStyle? titleStyle;
  final TextStyle? contentStyle;
  final String? buttonText;
  final Function()? onPressed;

  static bool isShow = false;

  const SuccessDialog({
    super.key,
    required this.title,
    required this.content,
    this.titleStyle,
    this.contentStyle,
    this.buttonText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: Container(
        width: 390.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: popupColor,
        ),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 57.sp,
              height: 57.sp,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  CustomBoxShadow(
                      color: stoke, blurRadius: 5.0, blurStyle: BlurStyle.outer)
                ],
              ),
              child: SVGView.svgAssets(AssetIcons.assistant,
                  color: stoke, fit: BoxFit.contain),
            ),
            SizedBox(height: 26.h),
            Text(
              title ?? '',
              style: titleStyle ?? text18.medium.copyWith(color: stoke),
            ),
            SizedBox(height: 12.h),
            Text(
              content ?? '',
              style: contentStyle ?? text16.white.medium,
            ),
            SizedBox(height: 26.h),
            GradientButton(
              padding: EdgeInsets.symmetric(
                vertical: 16.h,
              ),
              onTap: onPressed ??
                  () {
                    Navigator.pop(context);
                  },
              child: Text(
                buttonText ?? 'OK',
                style: text18.white,
              ),
            )
          ],
        ),
      ),
    );
  }

  static void show(BuildContext context,
      {String? title,
      String? content,
      TextStyle? titleStyle,
      TextStyle? contentStyle,
      String? buttonText,
      Function()? onPressed}) {
    if (!isShow) {
      isShow = true;
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => SuccessDialog(
          title: title,
          content: content,
          titleStyle: titleStyle,
          contentStyle: contentStyle,
          buttonText: buttonText,
          onPressed: () {
            isShow = false;
            Navigator.pop(context);
            onPressed?.call();
          },
        ),
      );
    }
  }
}

class CustomBoxShadow extends BoxShadow {
  const CustomBoxShadow({
    Color color = const Color(0xFF000000),
    Offset offset = Offset.zero,
    double blurRadius = 0.0,
    BlurStyle blurStyle = BlurStyle.normal,
  }) : super(
            color: color,
            offset: offset,
            blurRadius: blurRadius,
            blurStyle: blurStyle);

  @override
  Paint toPaint() {
    final Paint result = Paint()
      ..color = color
      ..maskFilter = MaskFilter.blur(blurStyle, blurSigma);
    assert(() {
      if (debugDisableShadows) {
        result.maskFilter = null;
      }
      return true;
    }());
    return result;
  }
}
