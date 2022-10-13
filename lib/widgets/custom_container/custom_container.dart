import 'package:flutter/material.dart';
import 'package:simservers/constants/app_constants.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    required this.height,
    required this.width,
    this.gradient,
    this.borderRadius,
    this.boxShadowColour,
    this.boxShadowSpreadRadius,
    this.boxShadowOffset,
    this.blurStyle,
    this.blurRadius,
    this.padding,
    required this.containerChild,
  }) : super(key: key);
  final double height;
  final double width;
  final Gradient? gradient;
  final BorderRadiusGeometry? borderRadius;
  final Color? boxShadowColour;
  final double? boxShadowSpreadRadius;
  final Offset? boxShadowOffset;
  final BlurStyle? blurStyle;
  final double? blurRadius;
  final EdgeInsetsGeometry? padding;
  final Widget containerChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
        boxShadow: [
          BoxShadow(
            color: boxShadowColour ?? kWhite,
            spreadRadius: boxShadowSpreadRadius ?? 0.0,
            offset: boxShadowOffset ?? Offset.zero,
            blurStyle: BlurStyle.normal,
            blurRadius: blurRadius ?? 0.0,
          ),
        ],
      ),
      child: containerChild,
    );
  }
}
