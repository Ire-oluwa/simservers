import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/providers/settings_provider/settings_provider.dart';
import 'package:simservers/utilities/custom_text_field/custom_text_form_field.dart';
import 'package:simservers/utilities/elevated_button_style.dart';
import 'package:simservers/widgets/custom_text.dart';

class SetTransactionPin extends StatefulWidget {
  const SetTransactionPin({Key? key}) : super(key: key);
  static const String id = "set transaction pin";

  @override
  State<SetTransactionPin> createState() => _SetTransactionPinState();
}

class _SetTransactionPinState extends State<SetTransactionPin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kTransparent,
        leading: kBuildBackButton(context, kBlack),
        title: CustomText(
          text: "Set Transaction Pin",
          colour: kBlack,
          fontSize: 16.0.sp,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: kUnfocus,
        child: Padding(
          padding: EdgeInsets.only(left: 29.0.w, right: 29.0.w, top: 29.0.h),
          child: ListView(
            children: [
              _buildSetTransactionPinInput(
                context,
                context.read<SetTransactionsPinProvider>().passwordController,
                context.read<SetTransactionsPinProvider>().newPinController,
                context
                    .read<SetTransactionsPinProvider>()
                    .confirmNewPinController,
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

Widget _buildSetTransactionPinInput(
    context, passwordController, newPinController, confirmNewPinController) {
  return SizedBox(
    height: 320.0.h,
    width: 370.0.w,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Enter your password",
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
        CustomText(
          text: "Enter new pin",
          colour: kDimTextColour,
          fontSize: 12.0.sp,
        ),
        SizedBox(height: 16.0.sp),
        CustomTextFormField(
          controller: newPinController,
          keyboardType: TextInputType.visiblePassword,
          inputAction: TextInputAction.next,
          width: 370.0.w,
          height: 48.0.h,
        ),
        SizedBox(height: 16.0.sp),
        CustomText(
          text: "Confirm new pin",
          colour: kDimTextColour,
          fontSize: 12.0.sp,
        ),
        SizedBox(height: 16.0.sp),
        CustomTextFormField(
          controller: confirmNewPinController,
          keyboardType: TextInputType.visiblePassword,
          inputAction: TextInputAction.next,
          width: 370.0.w,
          height: 48.0.h,
        ),
      ],
    ),
  );
}
