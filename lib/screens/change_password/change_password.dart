import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/utilities/custom_text_field/custom_text_form_field.dart';
import 'package:simservers/widgets/submission_button.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);
  static const String id = "change password screen";

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _otpController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 103.0.h,
                left: 114.0.w,
                right: 102.0.w,
              ),
              child: Text(
                "Change Password",
                style: GoogleFonts.poppins(
                  fontSize: 28.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 46.0.h),
            CustomTextFormField(
              controller: _otpController,
              keyboardType: TextInputType.number,
              inputAction: TextInputAction.next,
              placeholder: "Enter OTP",
            ),
            SizedBox(height: 16.0.h),
            CustomTextFormField(
              controller: _passwordController,
              keyboardType: TextInputType.visiblePassword,
              inputAction: TextInputAction.next,
              placeholder: "New Password",
            ),
            SizedBox(height: 16.0.h),
            CustomTextFormField(
              controller: _confirmPasswordController,
              keyboardType: TextInputType.visiblePassword,
              inputAction: TextInputAction.next,
              placeholder: "Confirm Password",
            ),
            SizedBox(height: 27.0.h),
            SizedBox(
              width: 212.15.w,
              height: 47.0.h,
              child: SubmissionButton(
                fillColour: kSubmissionButtonColour,
                title: "Save",
                onClick: () {},
                textColour: kWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
