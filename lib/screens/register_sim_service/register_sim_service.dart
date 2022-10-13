import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/screens/register_sim_service/add_new_devices.dart';
import 'package:simservers/screens/register_sim_service/reset.dart';
import 'package:simservers/widgets/custom_text.dart';

import 'delete.dart';

class RegisterSimService extends StatefulWidget {
  const RegisterSimService({Key? key}) : super(key: key);
  static const String id = "register sim device";

  @override
  State<RegisterSimService> createState() => _RegisterSimServiceState();
}

class _RegisterSimServiceState extends State<RegisterSimService> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, size: 24.0.sp),
            color: kBlack,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0.0,
          title: const CustomText(
            text: "Register Sim Service",
            colour: kBlack,
            fontWeight: FontWeight.w500,
          ),
          bottom: _buildTabBar(context),
          centerTitle: true,
        ),
        body: const Center(
          child: TabBarView(
            children: [
              AddNewDevices(),
              Reset(),
              Delete(),
            ],
          ),
        ),
      ),
    );
  }
}

PreferredSizeWidget _buildTabBar(BuildContext context) {
  return TabBar(
    indicatorColor: Colors.transparent,
    tabs: [
      CustomTextButton(
        title: "Add new device",
        //TODO: pop-up to add device.
        onClick: () {},
        backgroundColour: const Color(0xFF20B45B),
      ),
      CustomTextButton(
        title: "Reset",
        //TODO: pop-up to reset settings.
        onClick: () {},
        backgroundColour: const Color(0xFF5A9FFC),
      ),
      CustomTextButton(
        title: "Delete",
        //TODO: pop-up to delete device.
        onClick: () {},
        backgroundColour: const Color(0xFFFE7062),
      ),
    ],
  );
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.title,
    required this.onClick,
    required this.backgroundColour,
  }) : super(key: key);
  final String title;
  final void Function() onClick;
  final Color backgroundColour;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 29.0.h,
      width: 113.0.w,
      child: TextButton(
        onPressed: onClick,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColour,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0.r),
          ),
        ),
        child: Center(
          child: Text(title, style: const TextStyle(color: kWhite)),
        ),
      ),
    );
  }
}
