import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:simservers/constants/app_constants.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  static const String id = "splash screen";

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
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
            Image.asset("assets/splash/bottom_image_splah.png")
          ],
        ),
      ),
    );
  }
}
