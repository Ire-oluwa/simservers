import 'package:flutter/material.dart';
import 'package:simservers/constants/app_constants.dart';

class InitialSplashScreen extends StatefulWidget {
  const InitialSplashScreen({Key? key}) : super(key: key);
  static const String id = "splash screen";

  @override
  State<InitialSplashScreen> createState() => _InitialSplashScreenState();
}

class _InitialSplashScreenState extends State<InitialSplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: kWhite,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/splash/SIMSAVERS LOGO.png",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/splash/bottom_image_splash.png",
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
