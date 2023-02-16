import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/utilities/elevated_button_style.dart';
import 'package:simservers/widgets/custom_text.dart';

class Reset extends StatefulWidget {
  const Reset({Key? key}) : super(key: key);
  static const String id = "reset";

  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 293.52.w,
      height: 100.0.h,
      child: AlertDialog(
        title: CustomText(
          text: "Are you sure you want to reset this device",
          colour: kBlack,
          fontSize: 11.23.sp,
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  CustomElevatedButton(
                    onClick: () {},
                    backgroundColour: kPrimaryBlue,
                    borderSideColour: kTransparent,
                    height: 18.0.h,
                    width: 85.0.w,
                    borderRadius: 5.0.r,
                    child: CustomText(
                      text: "Yes",
                      fontSize: 7.49.sp,
                      colour: kWhite,
                    ),
                  ),
                  SizedBox(height: 11.0.h),
                  CustomElevatedButton(
                    onClick: () {
                      Navigator.pop(context);
                    },
                    backgroundColour: kWhite,
                    height: 18.0.h,
                    width: 85.0.w,
                    borderRadius: 5.0.r,
                    borderSideColour: kPrimaryBlue,
                    child: CustomText(
                      text: "No",
                      fontSize: 7.49.sp,
                      colour: kPrimaryBlue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
