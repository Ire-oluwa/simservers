import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/models/new_device/new_device_data.dart';
import 'package:simservers/utilities/elevated_button_style.dart';
import 'package:simservers/widgets/custom_text.dart';

class Delete extends StatefulWidget {
  const Delete({Key? key, required this.onClick, required this.title}) : super(key: key);
  static const String id = "delete";
  final void Function() onClick;
  final String title;

  @override
  State<Delete> createState() => _DeleteState();
}

class _DeleteState extends State<Delete> {
  @override
  Widget build(BuildContext context) {
    var _device = Provider.of<NewDeviceData>(context).newDevice.last;
    return SizedBox(
      width: 293.52.w,
      height: 100.0.h,
      child: AlertDialog(
        title: CustomText(
          text: widget.title,
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
                    onClick: widget.onClick,
                    backgroundColour: const Color(0xFFFE7062),
                    height: 18.0.h,
                    width: 85.0.w,
                    borderRadius: 5.0.r,
                    borderSideColour: Colors.transparent,
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
                    borderSideColour: kBlack,
                    child: CustomText(
                      text: "Close",
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
