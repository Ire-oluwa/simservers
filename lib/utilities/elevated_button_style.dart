import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.onClick,
    required this.child,
    required this.backgroundColour,
    this.elevation,
  }) : super(key: key);
  final void Function() onClick;
  final Widget child;
  final Color backgroundColour;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130.0.w,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColour,
          elevation: elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0.r),
          ),
        ),
        onPressed: onClick,
        child: child,
      ),
    );
  }
}
