import 'package:flutter/material.dart';
import 'package:niet_placements/utils/constants/colors.dart';
import 'package:niet_placements/utils/constants/sizes.dart';

class roundedContainer extends StatelessWidget {
  const roundedContainer({
    super.key,
    required this.child,
    this.height,
    this.width,
    this.radius = Sizes.cardRadiusLg,
    this.padding,
    this.margin,
    this.borderColor = SColors.borderPrimary,
    this.backgroundColor = SColors.white,
    this.showBorder = false,
  });
  final Widget? child;
  final double? height;
  final double? width;
  final double radius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color borderColor;
  final Color backgroundColor;
  final bool showBorder;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(radius),
            border: showBorder ? Border.all(color: borderColor) : null),
        child: child);
  }
}
