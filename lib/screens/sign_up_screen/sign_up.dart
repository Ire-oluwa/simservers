import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/screens/dashboard/dashboard.dart';
import 'package:simservers/screens/sign_in/sign_in.dart';
import 'package:simservers/utilities/custom_text_field/custom_text_form_field.dart';
import 'package:simservers/widgets/submission_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static const String id = "sign up screen";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _signUpFormKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 448.0.h,
                child: Stack(
                  children: [
                    Positioned(
                      top: 67.0.h,
                      left: 81.0.w,
                      right: 52.0.w,
                      child: Image.asset(
                        "assets/authentication/create_account_and_welcome_back.png",
                        width: 295.0.w,
                        height: 274.0.h,
                      ),
                    ),
                    Positioned(
                      top: 156.0.h,
                      left: 81.0.w,
                      right: 52.0.w,
                      child: Text(
                        "Create an account",
                        style: GoogleFonts.poppins(
                          fontSize: 32.0.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 214.0.h,
                      left: 114.0.w,
                      child: Image.asset(
                        "assets/authentication/young_woman_create_account.png",
                        height: 178.0.h,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 50.0.w, right: 49.0.w),
                    child: Column(
                      children: [
                        CustomTextFormField(
                          controller: _fullNameController,
                          keyboardType: TextInputType.name,
                          inputAction: TextInputAction.next,
                          placeholder: "Full name",
                          width: 329.0.w,
                          height: 46.0.h,
                        ),
                        SizedBox(height: 10.0.h),
                        CustomTextFormField(
                          controller: _fullNameController,
                          keyboardType: TextInputType.name,
                          inputAction: TextInputAction.next,
                          placeholder: "Email",
                          width: 329.0.w,
                          height: 46.0.h,
                        ),
                        SizedBox(height: 10.0.h),
                        CustomTextFormField(
                          controller: _fullNameController,
                          keyboardType: TextInputType.name,
                          inputAction: TextInputAction.next,
                          placeholder: "Phone Number",
                          width: 329.0.w,
                          height: 46.0.h,
                        ),
                        SizedBox(height: 10.0.h),
                        CustomTextFormField(
                          controller: _fullNameController,
                          keyboardType: TextInputType.name,
                          inputAction: TextInputAction.next,
                          placeholder: "Password",
                          width: 329.0.w,
                          height: 46.0.h,
                        ),
                        SizedBox(height: 10.0.h),
                        CustomTextFormField(
                          controller: _fullNameController,
                          keyboardType: TextInputType.name,
                          inputAction: TextInputAction.next,
                          placeholder: "Confirm Password",
                          width: 329.0.w,
                          height: 46.0.h,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 23.0.h),
              Padding(
                padding: EdgeInsets.only(left: 77.0.w, right: 115.0.w),
                child: Row(
                  children: [
                    SizedBox(
                      width: 16.0.w,
                      height: 16.0.h,
                      child: Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 24.0.w),
                    Text("I agree to the ",
                        style: GoogleFonts.poppins(
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.bold,
                        )),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Terms and Conditions",
                        style: GoogleFonts.poppins(
                          color: kSubmissionButtonColour,
                          fontSize: 14.0.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0.h),
              SizedBox(
                width: 212.12.w,
                height: 47.h,
                child: SubmissionButton(
                  fillColour: kSubmissionButtonColour,
                  title: 'Sign Up',
                  textColour: kWhite,
                  onClick: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const DashboardScreen(),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20.0.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: GoogleFonts.poppins(),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(SignInScreen.id);
                    },
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.poppins(
                        color: kSubmissionButtonColour,
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
    );
  }
}
