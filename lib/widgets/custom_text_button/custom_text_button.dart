import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.title,
    required this.onClick,
    required this.backgroundColour,
    required this.height,
    required this.width,
    this.borderColour,
    required this.textColour, this.fontSize, this.borderRadius,
  }) : super(key: key);
  final String title;
  final void Function() onClick;
  final Color backgroundColour;
  final Color? borderColour;
  final Color textColour;
  final double height;
  final double width;
  final double? fontSize;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        onPressed: onClick,
        style: TextButton.styleFrom(
          side: BorderSide(color: borderColour ?? Colors.transparent),
          backgroundColor: backgroundColour,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 10.0.r),
          ),
        ),
        child: Center(
          child: Text(title, style: TextStyle(color: textColour, fontSize: fontSize)),
        ),
      ),
    );
  }
}
