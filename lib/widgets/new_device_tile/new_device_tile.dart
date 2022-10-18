import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/models/new_device/new_device_data.dart';
import 'package:simservers/widgets/custom_text.dart';

class NewDeviceTile extends StatelessWidget {
  final bool isChecked;
  final String deviceName;
  final String deviceId;
  final void Function(bool?) checkboxCallback;
  final Widget editDevice;
  final Widget addCredit;

  const NewDeviceTile(
    this.isChecked,
    this.deviceName,
    this.deviceId,
    this.editDevice,
    this.addCredit,
    this.checkboxCallback, {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Checkbox(value: isChecked, onChanged: checkboxCallback),
        // SizedBox(width: 6.85.w),
        CustomText(text: deviceName, colour: kBlack, fontSize: 12.62.sp),
        // SizedBox(width: 46.46.w),
        EditDeviceButton(),
        // SizedBox(width: 10.0.w),
        AddCreditButton(),
      ],
    );
  }
}
