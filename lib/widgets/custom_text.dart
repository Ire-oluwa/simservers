import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.text,
    this.colour,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.fontStyle,
    this.fontFamily,
    this.textOverflow,
  }) : super(key: key);
  final String text;
  final Color? colour;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final FontStyle? fontStyle;
  final String? fontFamily;
  final TextOverflow? textOverflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: colour,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        fontFamily: fontFamily,
        overflow: textOverflow,
      ),
    );
  }
}