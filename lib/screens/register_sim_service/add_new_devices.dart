import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/models/new_device/new_device_data.dart';
import 'package:simservers/utilities/custom_text_field/custom_text_form_field.dart';
import 'package:simservers/utilities/elevated_button_style.dart';
import 'package:simservers/widgets/custom_container/custom_container.dart';
import 'package:simservers/widgets/custom_text.dart';

class AddNewDevices extends StatefulWidget {
  const AddNewDevices({Key? key}) : super(key: key);
  static const String id = "add new devices";

  @override
  State<AddNewDevices> createState() => _AddNewDevicesState();
}

class _AddNewDevicesState extends State<AddNewDevices> {
  final _deviceNameController = TextEditingController();
  final _deviceKeyController = TextEditingController();
  final _simBalanceController = TextEditingController();
  final _devicePinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 37.0.w,
            top: 175.0.h,
            right: 37.0.w,
            bottom: 175.0.h,
            child: Container(
              padding:
                  EdgeInsets.only(left: 22.64.w, top: 19.92.h, right: 20.83.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0.r),
              ),
              child: SingleChildScrollView(
                child: Center(
                  child: SizedBox(
                    width: 354.96.w,
                    height: 475.0.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AddNewDeviceColumn(
                          deviceNameController: _deviceNameController,
                          deviceKeyController: _deviceKeyController,
                          simBalanceController: _simBalanceController,
                          devicePinController: _devicePinController,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AddNewDeviceColumn extends StatelessWidget {
  const AddNewDeviceColumn({
    Key? key,
    required this.deviceNameController,
    required this.deviceKeyController,
    required this.simBalanceController,
    required this.devicePinController,
  }) : super(key: key);

  final TextEditingController deviceNameController;
  final TextEditingController deviceKeyController;
  final TextEditingController simBalanceController;
  final TextEditingController devicePinController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: kUnfocus,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text: "Device Name", fontSize: 10.87.sp),
            SizedBox(height: 2.8.h),
            CustomTextFormField(
              controller: deviceNameController,
              keyboardType: TextInputType.text,
              inputAction: TextInputAction.next,
              width: 311.5.w,
              height: 38.27.h,
            ),
            SizedBox(height: 11.77.h),
            CustomText(text: "Device Key", fontSize: 10.87.sp),
            SizedBox(height: 2.8.h),
            CustomTextFormField(
              controller: deviceKeyController,
              keyboardType: TextInputType.text,
              inputAction: TextInputAction.next,
              width: 311.5.w,
              height: 38.27.h,
            ),
            SizedBox(height: 11.77.h),
            CustomText(text: "Sim Slot", fontSize: 10.87.sp),
            CustomContainer(
              colour: const Color(0xFFECEEF6),
              height: 38.27.h,
              width: 311.5.w,
              borderRadius: BorderRadius.circular(5.0.r),
              containerChild: Padding(
                padding:
                    EdgeInsets.only(left: 8.15.w, top: 10.2, bottom: 12.07),
                child: CustomText(text: "Sim 1", fontSize: 10.87.sp),
              ),
            ),
            SizedBox(height: 11.77.h),
            CustomText(text: "Sim Balance", fontSize: 10.87.sp),
            SizedBox(height: 2.8.h),
            CustomTextFormField(
              controller: simBalanceController,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              inputAction: TextInputAction.next,
              width: 311.5.w,
              height: 38.27.h,
            ),
            SizedBox(height: 11.77.h),
            CustomText(text: "Device Status", fontSize: 10.87.sp),
            CustomContainer(
              colour: const Color(0xFFECEEF6),
              height: 38.27.h,
              width: 311.5.w,
              borderRadius: BorderRadius.circular(5.0.r),
              containerChild: Padding(
                padding:
                    EdgeInsets.only(left: 8.15.w, top: 10.2, bottom: 12.07),
                child: CustomText(text: "Not Active", fontSize: 10.87.sp),
              ),
            ),
            SizedBox(height: 11.77.h),
            CustomText(text: "Device Processes", fontSize: 10.87.sp),
            SizedBox(height: 2.8.h),
            CustomContainer(
              colour: const Color(0xFFECEEF6),
              height: 38.27.h,
              width: 311.5.w,
              borderRadius: BorderRadius.circular(5.0.r),
              containerChild: Padding(
                padding:
                    EdgeInsets.only(left: 8.15.w, top: 10.2, bottom: 12.07),
                child: CustomText(text: "Sms", fontSize: 10.87.sp),
              ),
            ),
            SizedBox(height: 11.77.h),
            CustomText(text: "Device Pin", fontSize: 10.87.sp),
            SizedBox(height: 2.8.h),
            CustomTextFormField(
              controller: devicePinController,
              keyboardType: TextInputType.number,
              inputAction: TextInputAction.next,
              width: 311.5.w,
              height: 38.27.h,
            ),
            SizedBox(height: 19.02.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 102.32.w,
                  height: 26.26.h,
                  child: CustomElevatedButton(
                    borderRadius: 10.0.r,
                    onClick: () {
                      Navigator.pop(context);
                    },
                    backgroundColour: kWhite,
                    borderSideColour: kBlack,
                    height: 26.26.h,
                    width: 102.32.w,
                    child: CustomText(
                      text: "Close",
                      colour: kBlack,
                      fontSize: 9.06.sp,
                    ),
                  ),
                ),
                SizedBox(width: 12.68.w),
                SizedBox(
                  height: 26.26.h,
                  width: 102.32.w,
                  child: CustomElevatedButton(
                    borderRadius: 10.0.r,
                    borderSideColour: kTransparent,
                    onClick: () {
                      context.read<NewDeviceData>().addDevice(
                            deviceNameController.text,
                            deviceKeyController.text,
                          );
                    },
                    backgroundColour: kPrimaryBlue,
                    height: 26.26.h,
                    width: 102.32.w,
                    child: CustomText(text: "Add device", fontSize: 9.06.sp),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
