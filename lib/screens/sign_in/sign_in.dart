import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/screens/forgot_password/forgot_password.dart';
import 'package:simservers/utilities/custom_text_field/custom_text_form_field.dart';
import 'package:simservers/widgets/submission_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static const String id = "sign in screen";

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _signInFormKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: kUnfocus,
          child: SingleChildScrollView(
            child: SizedBox(
              width: 428.0.w,
              height: 926.0.h,
              child: Column(
                children: [
                  SizedBox(
                    height: 345.0.h,
                    child: Stack(
                      children: [
                        Positioned(
                          // top: 38.0.h,
                          left: 65.0.w,
                          right: 68.0.w,
                          child: SizedBox(
                            width: 295.0.w,
                            height: 274.0.h,
                            child: Image.asset(
                              "assets/authentication/create_account_and_welcome_back.png",
                            ),
                          ),
                        ),
                        Positioned(
                          top: 126.0.h,
                          left: 75.0.w,
                          child: SizedBox(
                            width: 275.0.w,
                            height: 48.0.h,
                            child: Image.asset(
                              "assets/authentication/Welcome_Back.png",
                            ),
                          ),
                        ),
                        Positioned(
                          top: 217.0.h,
                          left: 35.0.w,
                          right: 30.0.w,
                          child: SizedBox(
                            // width: 230.0.w,
                            height: 128.25.h,
                            child: Image.asset(
                              "assets/authentication/man_and_woman_welcome.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 42.75.h),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 52.0.w,
                      right: 47.0.w,
                    ),
                    child: Column(
                      children: [
                        CustomTextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          inputAction: TextInputAction.next,
                          placeholder: "Email",
                          width: 329.0.w,
                          height: 46.0.h,
                        ),
                        SizedBox(height: 10.0.h),
                        CustomTextFormField(
                          controller: _passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          inputAction: TextInputAction.next,
                          placeholder: "Password",
                          width: 329.0.w,
                          height: 46.0.h,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 59.0.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Forgot Password? ",
                        style: GoogleFonts.poppins(fontSize: 14.0.sp),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            ForgotPasswordScreen.id,
                          );
                        },
                        child: Text(
                          "Click Here",
                          style: GoogleFonts.poppins(
                            fontSize: 14.0.sp,
                            fontWeight: FontWeight.bold,
                            color: kSubmissionButtonColour,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 28.0.h),
                  SizedBox(
                    width: 212.15.w,
                    height: 47.0.h,
                    child: SubmissionButton(
                      fillColour: kSubmissionButtonColour,
                      title: 'SIgn In',
                      onClick: () {},
                      textColour: kWhite,
                    ),
                  ),
                  SizedBox(height: 21.0.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: GoogleFonts.poppins(fontSize: 14.0.sp),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.poppins(
                            color: kSubmissionButtonColour,
                            fontSize: 14.0.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
