import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_fast_multipay/theme/colors/app_color.dart';

class ImageView {
  static Widget assetImage(String url,
      {double? width, double? height, BoxFit? fit}) {
    return Image.asset(
      url,
      width: width,
      height: height,
      fit: fit,
    );
  }

  static Widget networkImage(String url,
      {double? width,
      double? height,
      BoxFit? fit,
      double? radius,
      Color? color}) {
    return CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
      fit: fit,
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 0),
          image: DecorationImage(
            image: imageProvider,
            fit: fit ?? BoxFit.cover,
          ),
        ),
      ),
      placeholder: (context, url) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 0),
          color: color ?? Colors.grey,
        ),
        child: const Center(
          child: CircularProgressIndicator(
            color: primaryColor,
          ),
        ),
      ),
      errorWidget: (context, url, error) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 0),
          color: color ?? Colors.grey,
        ),
      ),
    );
  }
}

class SVGView {
  static SvgPicture svgAssets(
    String name, {
    Color? color,
    double? width,
    double? height,
    BoxFit fit = BoxFit.cover,
  }) {
    return SvgPicture.asset(
      name,
      colorFilter: ColorFilter.mode(color ?? Colors.white, BlendMode.srcIn),
      width: width,
      height: height,
      fit: fit,
    );
  }
}
