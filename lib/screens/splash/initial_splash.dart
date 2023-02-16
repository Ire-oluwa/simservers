import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platform_device_id/platform_device_id.dart';
import 'package:provider/provider.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/providers/device_info_provider.dart';
import 'package:simservers/screens/splash/final_splash.dart';

class InitialSplashScreen extends StatefulWidget {
  const InitialSplashScreen({Key? key}) : super(key: key);
  static const String id = "splash screen";

  @override
  State<InitialSplashScreen> createState() => _InitialSplashScreenState();
}

class _InitialSplashScreenState extends State<InitialSplashScreen> {
  String _deviceId = "";
  int _duration = 2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Future<String?> getDeviceId() async {
    String? deviceId = await PlatformDeviceId.getDeviceId;
    return deviceId;
  }

  @override
  void didChangeDependencies() {
    getDeviceId().then((value) => _deviceId = value!);
    context.read<DeviceInfo>().deviceId = _deviceId;
    super.didChangeDependencies();

    // Timer(const Duration(seconds: 4), () {
    //   Navigator.of(context).pushReplacementNamed(FinalSplashScreen.id);
    // });

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      timeStamp = const Duration(seconds: 2);
      Future.delayed(timeStamp, () {
        Navigator.of(context).pushReplacementNamed(FinalSplashScreen.id);
      });
    });
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
            Hero(
              tag: "sim servers logo",
              child: Image.asset(
                "assets/splash/SIMSAVERS LOGO.png",
                width: 111.w,
                height: 158.07.h,
                fit: BoxFit.cover,
              ),
            ),
            Image.asset(
              "assets/splash/bottom_image_splash.png",
              width: 561.84.w,
              height: 432.h,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
