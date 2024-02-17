import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AppCircleAvatar extends StatelessWidget {
  final String? imageUrl;
  final double? size;
  final Color? backgroundColor;
  final Widget? child;
  final VoidCallback? onPressed;

  const AppCircleAvatar({
    Key? key,
    this.imageUrl,
    this.size,
    this.backgroundColor,
    this.child,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return child ??
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
          ),
          child: imageUrl != null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(size! / 2),
                  child: CachedNetworkImage(
                    imageUrl: imageUrl!,
                    fit: BoxFit.cover,
                    height: size,
                  ),
                )
              : null,
        );
  }
}
