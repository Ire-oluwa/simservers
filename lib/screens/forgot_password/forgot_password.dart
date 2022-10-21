import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/screens/change_password/change_password.dart';
import 'package:simservers/utilities/custom_text_field/custom_text_form_field.dart';
import 'package:simservers/widgets/submission_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static const String id = "forgot password screen";

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  // final _forgotPasswordKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: kUnfocus,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 107.0.h,
                    left: 133.0.w,
                    right: 112.0.w,
                  ),
                  child: Text(
                    "Forgot Password",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0.sp,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 37.0.h,
                    left: 125.0.w,
                    right: 125.0.w,
                  ),
                  child: Image.asset(
                    "assets/authentication/young_man_forgot_password.png",
                  ),
                ),
                SizedBox(height: 41.62.h),
                Padding(
                  padding: EdgeInsets.only(left: 61.0.w, right: 60.0.w),
                  child: Wrap(
                    direction: Axis.vertical,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        "Enter your registered email below to receive",
                        style: GoogleFonts.poppins(
                          fontSize: 16.0.sp,
                          color: const Color(0xFF999999),
                        ),
                      ),
                      Text(
                        "password reset instruction",
                        style: GoogleFonts.poppins(
                          fontSize: 16.0.sp,
                          color: const Color(0xFF999999),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.0.h),
                CustomTextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next,
                  placeholder: "Email",
                  width: 329.0.w,
                  height: 46.0.h,
                ),
                SizedBox(height: 39.0.h),
                SizedBox(
                  width: 212.15.w,
                  height: 47.0.h,
                  child: SubmissionButton(
                    fillColour: kSubmissionButtonColour,
                    title: "Continue",
                    onClick: () {
                      Navigator.of(context).pushNamed(ChangePasswordScreen.id);
                    },
                    textColour: kWhite,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
