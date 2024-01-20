import 'dart:ui';
import 'dart:math';

double devicePixelRatio =
    PlatformDispatcher.instance.views.first.devicePixelRatio;

///The number of device pixels for each logical pixel.

Size get size =>
    PlatformDispatcher.instance.views.first.physicalSize / devicePixelRatio;

const designWidth = 375;
const desginHeight = 812;

double kButtonRadius = 16;

double get scaleWidth => size.width / designWidth;

double get scaleHeight => size.height / desginHeight;

double get scaleText => min(scaleWidth, scaleHeight);

extension ScreenExtension on num {
  double get w => this * scaleWidth; // Width Scale
  double get h => this * scaleHeight; // Height Scale
  double get sp => this * scaleText; // Text Scale
  double get r => this * scaleText; // Radius Scale
}
