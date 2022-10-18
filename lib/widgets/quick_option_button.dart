import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/widgets/custom_text.dart';

class QuickOption extends StatelessWidget {
  const QuickOption({
    Key? key,
    required this.onClick,
    required this.backgroundColour,
    required this.iconData,
    required this.firstText,
    required this.secondText,
  }) : super(key: key);
  final VoidCallback onClick;
  final Color backgroundColour;
  final IconData iconData;
  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.23.h,
      width: 100.23.w,
      child: RawMaterialButton(
        fillColor: backgroundColour,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0.r),
        ),
        onPressed: onClick,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData, color: kWhite),
            CustomText(
              text: firstText,
              colour: kWhite,
              fontSize: 15.0.sp,
            ),
            CustomText(
              text: secondText,
              colour: kWhite,
              fontSize: 14.0.sp,
            ),
          ],
        ),
      ),
    );
  }
}
