import 'package:flutter/material.dart';
import 'package:my_base_code/core/utils/sizer.dart';
import 'package:my_base_code/core/theme/colors/app_color.dart';
import 'package:my_base_code/core/theme/texts/text_styles.dart';

class AppTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final Function(String value)? onChanged;
  final Function(String value)? onSubmitted;
  final Function()? onTap;
  final Function()? onEditingComplete;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final int? maxLength;
  final int? maxLines;
  final Widget? prefix;
  final Widget? suffix;
  final double? height;

  const AppTextField({
    super.key,
    this.hintText,
    this.controller,
    this.obscureText,
    this.keyboardType,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.onEditingComplete,
    this.textInputAction,
    this.focusNode,
    this.prefix,
    this.suffix,
    this.height,
    this.maxLength,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: IntrinsicWidth(
        child: Row(
          children: [
            if (prefix != null) prefix!,
            Expanded(
              child: TextFormField(
                controller: controller,
                obscureText: obscureText ?? false,
                keyboardType: keyboardType,
                onChanged: onChanged,
                onTap: onTap,
                maxLength: maxLength,
                maxLines: maxLines ?? 1,
                onEditingComplete: onEditingComplete,
                textInputAction: textInputAction,
                focusNode: focusNode,
                style: text16.white,
                scrollPadding: EdgeInsets.zero,
                cursorColor: whiteColor,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  isCollapsed: true,
                  hintText: hintText,
                  counterText: '',
                  hintStyle: text16.white,
                  border: InputBorder.none,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),
              ),
            ),
            if (suffix != null) suffix!,
          ],
        ),
      ),
    );
  }
}
