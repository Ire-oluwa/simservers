import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.onClick,
    required this.child,
    required this.backgroundColour,
    this.elevation,
    this.borderSideWidth,
    this.borderSideColour,
    this.borderRadius,
    required this.height,
    required this.width,
  }) : super(key: key);
  final void Function() onClick;
  final Widget child;
  final Color backgroundColour;
  final double? elevation;
  final double? borderSideWidth;
  final Color? borderSideColour;
  final double? borderRadius;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: BorderSide(
              width: borderSideWidth ?? 0.0,
              color: borderSideColour ?? const Color(0xFF000000)),
          backgroundColor: backgroundColour,
          elevation: elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 10.0.r),
          ),
        ),
        onPressed: onClick,
        child: child,
      ),
    );
  }
}
