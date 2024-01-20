import 'package:flutter/widgets.dart';
import 'package:my_base_code/assets/assets_view.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;
  final bool isLight;
  const BackgroundWidget({super.key, required this.child, this.isLight = true});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        ImageView.assetImage(
          isLight
              ? 'assets/images/background_light.png'
              : 'assets/images/background_dark.png',
          fit: BoxFit.cover,
        ),
        child,
      ],
    );
  }

  static Widget dark({Widget? child}) {
    return BackgroundWidget(
      isLight: false,
      child: child ?? const SizedBox(),
    );
  }
}
