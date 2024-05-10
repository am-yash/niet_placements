import 'package:flutter/material.dart';
import 'package:niet_placements/utils/constants/colors.dart';
import 'package:niet_placements/utils/constants/sizes.dart';

class SRoundedImage extends StatelessWidget {
  final String imageURL;
  final double? width;
  final double? height;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final bool applyImgRadius;
  final double borderRadius;

  const SRoundedImage({
    super.key,
    this.border,
    this.padding,
    this.onPressed,
    this.width,
    this.height,
    this.applyImgRadius = true,
    required this.imageURL,
    this.fit = BoxFit.contain,
    this.backgroundColor = SColors.light,
    this.isNetworkImage = false,
    this.borderRadius = Sizes.m,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Container(
          width: width,
          height: height,
          padding: padding,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),
            border: border,
          ),
          child: ClipRRect(
            borderRadius: applyImgRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,
            child: Image(
              fit: fit,
              image: isNetworkImage
                  ? NetworkImage(imageURL)
                  : AssetImage(imageURL) as ImageProvider,
            ),
          ),
        ));
  }
}
