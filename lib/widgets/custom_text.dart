import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    this.softWrap,
  }) : super(key: key);
  final String text;
  final Color? colour;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final FontStyle? fontStyle;
  final String? fontFamily;
  final TextOverflow? textOverflow;
  final bool? softWrap;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: softWrap,
      overflow: TextOverflow.clip,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
        color: colour,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
      ),
    );
  }
}
