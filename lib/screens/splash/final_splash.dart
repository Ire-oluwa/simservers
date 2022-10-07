import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/screens/landing/landing_page.dart';
import 'package:simservers/widgets/custom_text.dart';

class FinalSplashScreen extends StatefulWidget {
  const FinalSplashScreen({Key? key}) : super(key: key);
  static const String id = "final splash screen";

  @override
  State<FinalSplashScreen> createState() => _FinalSplashScreenState();
}

class _FinalSplashScreenState extends State<FinalSplashScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(color: kSecondaryBlue),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 281.0.h),
                  child: Hero(
                    tag: "sim servers logo",
                    child: Image.asset(
                      "assets/splash/SIMSAVERS LOGO.png",
                      width: 111.w,
                      height: 158.07.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 322.0.h),
                  child: Image.asset(
                    "assets/splash/simservers_text.png",
                    width: 300.59.w,
                    height: 52.h,
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.only(top: size.height.h - 42.h),
                //   child: GestureDetector(
                //     child: const Text("Next"),
                //   ),
                // ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 42.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, LandingPage.id);
                        },
                        child: const CustomText(
                          text: 'Next',
                          colour: kWhite,
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
