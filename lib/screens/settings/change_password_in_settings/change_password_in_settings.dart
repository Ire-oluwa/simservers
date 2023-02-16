import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/providers/settings_provider/settings_provider.dart';
import 'package:simservers/utilities/custom_text_field/custom_text_form_field.dart';
import 'package:simservers/utilities/elevated_button_style.dart';
import 'package:simservers/widgets/custom_text.dart';

class ChangePasswordInSettings extends StatefulWidget {
  const ChangePasswordInSettings({Key? key}) : super(key: key);
  static const String id = "change password in settings";

  @override
  State<ChangePasswordInSettings> createState() =>
      _ChangePasswordInSettingsState();
}

class _ChangePasswordInSettingsState extends State<ChangePasswordInSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kTransparent,
        leading: kBuildBackButton(context, kBlack),
        title: CustomText(
          text: "Change Password",
          fontSize: 16.0.sp,
          fontWeight: FontWeight.w600,
          colour: kBlack,
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: kUnfocus,
        child: Padding(
          padding: EdgeInsets.only(
            left: 29.0.w,
            right: 29.0.w,
            top: 29.0.h,
          ),
          child: ListView(
            children: [
              _buildChangePasswordInput(
                context,
                context
                    .read<ChangePasswordSettingsProvider>()
                    .oldPasswordController,
                context
                    .read<ChangePasswordSettingsProvider>()
                    .newPasswordController,
                context
                    .read<ChangePasswordSettingsProvider>()
                    .confirmNewPasswordController,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomElevatedButton(
                    borderSideColour: kTransparent,
                    borderRadius: 20.0.r,
                    onClick: () {},
                    backgroundColour: kButtonColour,
                    height: 40.0.h,
                    width: 113.0.w,
                    child: CustomText(
                      text: "Save",
                      colour: kWhite,
                      fontSize: 14.0.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildChangePasswordInput(context, oldPasswordController,
    newPasswordController, confirmNewPasswordController) {
  return SizedBox(
    height: 320.0.h,
    width: 370.0.w,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Enter your old password",
          colour: kDimTextColour,
          fontSize: 12.0.sp,
        ),
        SizedBox(height: 16.0.sp),
        CustomTextFormField(
          controller: oldPasswordController,
          keyboardType: TextInputType.visiblePassword,
          inputAction: TextInputAction.next,
          width: 370.0.w,
          height: 48.0.h,
        ),
        SizedBox(height: 16.0.sp),
        CustomText(
          text: "Enter new password",
          colour: kDimTextColour,
          fontSize: 12.0.sp,
        ),
        SizedBox(height: 16.0.sp),
        CustomTextFormField(
          controller: newPasswordController,
          keyboardType: TextInputType.visiblePassword,
          inputAction: TextInputAction.next,
          width: 370.0.w,
          height: 48.0.h,
        ),
        SizedBox(height: 16.0.sp),
        CustomText(
          text: "Confirm new password",
          colour: kDimTextColour,
          fontSize: 12.0.sp,
        ),
        SizedBox(height: 16.0.sp),
        CustomTextFormField(
          controller: confirmNewPasswordController,
          keyboardType: TextInputType.visiblePassword,
          inputAction: TextInputAction.next,
          width: 370.0.w,
          height: 48.0.h,
        ),
      ],
    ),
  );
}
