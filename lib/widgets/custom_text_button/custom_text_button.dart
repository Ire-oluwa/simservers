import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/constants/app_constants.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.title,
    required this.onClick,
    required this.backgroundColour,
    required this.height,
    required this.width,
    this.borderColour,
    required this.textColour,
  }) : super(key: key);
  final String title;
  final void Function() onClick;
  final Color backgroundColour;
  final Color? borderColour;
  final Color textColour;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        onPressed: onClick,
        style: TextButton.styleFrom(
          side: BorderSide(color: borderColour ?? Colors.black54),
          backgroundColor: backgroundColour,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0.r),
          ),
        ),
        child: Center(
          child: Text(title, style: TextStyle(color: textColour)),
        ),
      ),
    );
  }
}
