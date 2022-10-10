import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/widgets/custom_text.dart';

class SubmissionButton extends StatelessWidget {
  const SubmissionButton({
    Key? key,
    required this.fillColour,
    required this.title,
    required this.onClick,
    required this.textColour,
  }) : super(key: key);
  final Color fillColour;
  final String title;
  final Color textColour;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: fillColour,
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0.r)),
      onPressed: onClick,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: title,
            colour: textColour,
          ),
        ],
      ),
    );
  }
}
