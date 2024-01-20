import 'package:flutter/widgets.dart';
import 'package:my_base_code/utils/sizer.dart';
import 'package:my_base_code/assets/assets.dart';
import 'package:my_base_code/assets/assets_view.dart';

class LogoText extends StatelessWidget {
  const LogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ImageView.assetImage(
            AssetImages.logo,
            width: 41.sp,
            height: 41.sp,
          ),
          SizedBox(
            width: 7.w,
          ),
          ImageView.assetImage(
            AssetImages.xfactorIntelligent,
            width: 169.w,
            height: 19.h,
          ),
        ],
      ),
    );
  }
}
