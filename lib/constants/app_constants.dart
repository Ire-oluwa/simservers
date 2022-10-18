import 'package:flutter/material.dart';

const kPrimaryBlue = Color(0xFF5533FF);
const kSecondaryBlue = Color(0xFF4B6DDB);
const kTertiaryBlue = Color(0xFF4779DD);
const kPrimaryGreen = Color(0xFF00C9B7);
const kTransparent = Colors.transparent;
const kWhite = Color(0xFFFFFFFF);
const kBlack = Color(0xFF262626);
const kContainerWhite = Color(0xFFF4F7FB);
const kButtonColour = Color(0xFF7168F6);
const kSubmissionButtonColour = Color(0xFF467BFB);
const kLightBorderSide = BorderSide(width: 1.0, color: Colors.black12);
const kDimTextColour = Color(0xFF020614);
const kPasswordInputType = TextInputType.visiblePassword;
const kTextInputAction = TextInputAction.next;


VoidCallback kUnfocus = () {
  FocusManager.instance.primaryFocus?.unfocus();
};

Widget kBuildBackButton(BuildContext context, Color iconColour) {
  return IconButton(
    onPressed: () {
      Navigator.pop(context);
    },
    icon: Icon(Icons.arrow_back_ios_new_outlined, color: iconColour),
  );
}
