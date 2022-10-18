import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/widgets/custom_container/custom_container.dart';
import 'package:simservers/widgets/custom_text.dart';

class ApiTile extends StatelessWidget {
  const ApiTile({
    Key? key,
    required this.isChecked,
    required this.checkBoxCallBack,
    required this.deviceName,
    required this.deviceId,
    required this.onClick,
  }) : super(key: key);
  final bool isChecked;
  final void Function(bool?) checkBoxCallBack;
  final String deviceName;
  final String deviceId;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 21.0.w, right: 20.0, bottom: 0.3.h),
      child: CustomContainer(
        height: 53.86.h,
        width: 387.0.w,
        borderRadius: BorderRadius.circular(3.0.r),
        boxShadowColour: kWhite,
        containerChild: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Checkbox(value: isChecked, onChanged: checkBoxCallBack),
            CustomText(
              text: deviceName,
              colour: kBlack,
              fontSize: 12.62.sp,
            ),
            CustomText(
              text: deviceId,
              fontSize: 10.94.sp,
              colour: const Color(0xFF707683),
            ),
            TextButton(
              onPressed: onClick,
              child: CustomText(
                text: "Edit device",
                fontSize: 10.94.sp,
                colour: const Color(0xFF707683),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
