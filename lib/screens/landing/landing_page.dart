import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/screens/choose_plan/choose_plan.dart';
import 'package:simservers/screens/sign_in/sign_in.dart';
import 'package:simservers/screens/sign_up_screen/sign_up.dart';
import 'package:simservers/utilities/elevated_button_style.dart';
import 'package:simservers/widgets/custom_text.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);
  static const String id = "landing page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: 428.w,
            height: 926.h,
            child: Container(
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.4, 0.8, 0.99],
                  colors: [
                    Colors.transparent,
                    const Color(0xFF170C8F).withOpacity(0.5),
                    const Color(0xFF171069),
                  ],
                ),
              ),
              width: 428.w,
              height: 886.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "assets/landing_page/young_woman_with_phone.png"),
                  fit: BoxFit.cover,
                  // colorFilter: ,
                ),
              ),
            ),
          ),
          Positioned(
            left: 46.w,
            top: 605.h,
            right: 46.w,
            bottom: 233.h,
            child: SizedBox(
              width: 336.w,
              height: 88.h,
              child: Image.asset(
                "assets/landing_page/Get_Instant_deliveries_at_all_time.png",
              ),
            ),
          ),
          SizedBox(height: 48.0.h),
          Padding(
            padding: EdgeInsets.only(
              left: 74.5.w,
              right: 61.0.w,
              top: 700.0.h,
            ),
            child: Row(
              children: [
                CustomElevatedButton(
                  onClick: () {
                    // Navigator.of(context).pushNamed(SignUpScreen.id);
                    Navigator.pushNamed(context, ChoosePlan.id);
                  },
                  borderSideColour: Colors.transparent,
                  backgroundColour: kButtonColour,
                  height: 40.0.h,
                  width: 134.0.w,
                  child: const CustomText(
                    text: "Sign Up",
                    colour: kWhite,
                  ),
                ),
                SizedBox(width: 24.5.w),
                CustomElevatedButton(
                  borderSideColour: Colors.transparent,
                  onClick: () {
                    Navigator.pushNamed(context, SignInScreen.id);
                  },
                  backgroundColour: kButtonColour,
                  height: 40.0.h,
                  width: 134.0.w,
                  child: const CustomText(
                    text: "Login",
                    colour: kWhite,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
