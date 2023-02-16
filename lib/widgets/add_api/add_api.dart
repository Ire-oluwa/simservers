import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/providers/add_api_provider/add_api_provider.dart';
import 'package:simservers/utilities/custom_text_field/custom_text_form_field.dart';
import 'package:simservers/utilities/elevated_button_style.dart';
import 'package:simservers/widgets/custom_container/custom_container.dart';
import 'package:simservers/widgets/custom_text.dart';

class AddApi extends StatefulWidget {
  const AddApi({Key? key}) : super(key: key);

  @override
  State<AddApi> createState() => _AddApiState();
}

class _AddApiState extends State<AddApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: kUnfocus,
        child: SingleChildScrollView(
          child: SizedBox(
            height: 487.0.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Device name",
                  colour: kLabelTextColour,
                  fontSize: 12.0.sp,
                ),
                SizedBox(height: 3.09.h),
                CustomTextFormField(
                  controller: context.read<AddApiProvider>().deviceName,
                  keyboardType: kNameInputType,
                  inputAction: kNextInputAction,
                  width: 344.0.w,
                  height: 42.26.h,
                  onKeyUp: (string) {},
                ),
                SizedBox(height: 13.0.h),
                CustomText(
                  text: "Device key",
                  colour: kLabelTextColour,
                  fontSize: 12.0.sp,
                ),
                SizedBox(height: 3.09.h),
                //text with padding top:13, bottom: 3.09
                CustomTextFormField(
                  controller: context.read<AddApiProvider>().deviceKey,
                  keyboardType: TextInputType.name,
                  inputAction: kNextInputAction,
                  width: 344.0.w,
                  height: 42.26.h,
                  onKeyUp: (string) {},
                ),
                //text with padding top:13, bottom: 3.09
                Padding(
                  padding: EdgeInsets.only(top: 13.0.h, bottom: 3.09.h),
                  child: CustomText(
                    text: "Sim Slot",
                    colour: kLabelTextColour,
                    fontSize: 12.0.sp,
                  ),
                ),
                CustomContainer(
                  boxShadowColour: kContainerWhite,
                  padding: EdgeInsets.only(left: 9.0.w, top: 11.26.h),
                  height: 42.26.h,
                  width: 344.0.w,
                  containerChild: CustomText(
                    text: "Sim 1",
                    colour: const Color(0xFF000000),
                    fontSize: 12.0.sp,
                  ),
                ),
                //text with padding top:13, bottom: 3.09
                SizedBox(height: 13.09.h),
                //text with padding top:13, bott
                CustomText(
                  text: "Enter Pin",
                  colour: const Color(0xFF000000),
                  fontSize: 12.0.sp,
                ),
                CustomTextFormField(
                  controller: context.read<AddApiProvider>().devicePin,
                  keyboardType: TextInputType.number,
                  inputAction: kNextInputAction,
                  width: 344.0.w,
                  height: 42.26.h,
                  onKeyUp: (string) {},
                ),
                SizedBox(height: 36.0.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomElevatedButton(
                      borderRadius: 8.0.r,
                      borderSideColour: const Color(0xFF000000),
                      onClick: () {
                        Navigator.pop(context);
                      },
                      backgroundColour: kWhite,
                      height: 24.0.h,
                      width: 113.0.w,
                      child: CustomText(
                        text: "Close",
                        colour: kBlack,
                        fontSize: 10.0.sp,
                      ),
                    ),
                    SizedBox(width: 15.0.w),
                    CustomElevatedButton(
                      borderRadius: 8.0.r,
                      onClick: () {},
                      backgroundColour: kSubmissionButtonColour,
                      borderSideColour: kTransparent,
                      height: 24.0.h,
                      width: 113.0.w,
                      child: CustomText(
                        text: "Done",
                        colour: kWhite,
                        fontSize: 10.0.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
