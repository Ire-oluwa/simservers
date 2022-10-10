import 'package:flutter/material.dart';

const kPrimaryBlue = Color(0xFF5533FF);
const kSecondaryBlue = Color(0xFF4B6DDB);
const kTertiaryBlue = Color(0xFF4779DD);
const kPrimaryGreen = Color(0xFF00C9B7);
const kWhite = Color(0xffFFFFFF);
const kButtonColour = Color(0xFF7168F6);
const kSubmissionButtonColour = Color(0xFF467BFB);
const kLightBorderSide = BorderSide(width: 1.0, color: Colors.black12);
VoidCallback kUnfocus = () {
  FocusManager.instance.primaryFocus?.unfocus();
};
