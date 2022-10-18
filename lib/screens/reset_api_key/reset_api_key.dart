import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/providers/settings_provider/settings_provider.dart';
import 'package:simservers/utilities/custom_text_field/custom_text_form_field.dart';
import 'package:simservers/utilities/elevated_button_style.dart';
import 'package:simservers/widgets/custom_text.dart';

class ResetApiKey extends StatefulWidget {
  const ResetApiKey({Key? key}) : super(key: key);
  static const String id = "reset api key";

  @override
  State<ResetApiKey> createState() => _ResetApiKeyState();
}

class _ResetApiKeyState extends State<ResetApiKey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kTransparent,
        leading: kBuildBackButton(context, kBlack),
        title: CustomText(
          text: "Reset API Key",
          colour: kBlack,
          fontSize: 16.0.sp,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 29.0.w,
          right: 29.0.w,
          top: 29.0.h,
        ),
        child: ListView(
          children: [
            _buildResetApiKeyInput(
              context,
              context.read<ResetApiKeyProvider>().oldKeyController,
              context.read<ResetApiKeyProvider>().passwordController,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomElevatedButton(
                  borderRadius: 20.0.r,
                  onClick: () {},
                  backgroundColour: kButtonColour,
                  height: 40.0.h,
                  width: 113.0.w,
                  child: CustomText(
                    text: "Reset",
                    colour: kWhite,
                    fontSize: 14.0.sp,
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

Widget _buildResetApiKeyInput(context, oldKeyController, passwordController) {
  return SizedBox(
    height: 220.0.h,
    width: 370.0.w,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Old Key",
          colour: kDimTextColour,
          fontSize: 12.0.sp,
        ),
        SizedBox(height: 16.0.sp),
        CustomTextFormField(
          controller: oldKeyController,
          keyboardType: TextInputType.visiblePassword,
          inputAction: TextInputAction.next,
          width: 370.0.w,
          height: 48.0.h,
        ),
        SizedBox(height: 16.0.sp),
        CustomText(
          text: "Enter Password",
          colour: kDimTextColour,
          fontSize: 12.0.sp,
        ),
        SizedBox(height: 16.0.sp),
        CustomTextFormField(
          controller: passwordController,
          keyboardType: TextInputType.visiblePassword,
          inputAction: TextInputAction.next,
          width: 370.0.w,
          height: 48.0.h,
        ),
        SizedBox(height: 16.0.sp),
      ],
    ),
  );
}
