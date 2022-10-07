import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/utilities/button_style.dart';
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
              // left: 74.5.w,
              // right: 61.0.w,
              top: 700.0.h,
              // bottom: 151.0.h,
            ),
            child: Wrap(
              // alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                CustomElevatedButton(
                  onClick: () {},
                  backgroundColour: kButtonColour,
                  child: const CustomText(
                    text: "Sign up",
                    colour: kWhite,
                  ),
                ),
                SizedBox(width: 24.5.w),
                CustomElevatedButton(
                  onClick: () {},
                  backgroundColour: kButtonColour,
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
