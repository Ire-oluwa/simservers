import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/widgets/custom_container/custom_container.dart';
import 'package:simservers/widgets/custom_text.dart';

class AdminSettings extends StatelessWidget {
  const AdminSettings({Key? key}) : super(key: key);
  static const String id = "admin settings";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: "Admin Panel",
          fontSize: 16.0.sp,
          colour: kBlack,
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: kTransparent,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios, color: kBlack),
            );
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 18.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25.0.h),
            CustomText(
              text: "Settings",
              fontWeight: FontWeight.w600,
              fontSize: 17.0.sp,
            ),
            _buildSettingsTile(context, "Change Password", () {}),
            _buildSettingsTile(context, "Set Transaction Pin", () {}),
            _buildSettingsTile(context, "Rest API Key", () {}),
          ],
        ),
      ),
    );
  }
}

Widget _buildSettingsTile(context, String title, void Function() onClick) {
  return GestureDetector(
    onTap: onClick,
    child: Padding(
      padding: EdgeInsets.only(top: 10.0.h),
      child: CustomContainer(
        borderRadius: BorderRadius.circular(20.0.r),
        boxShadowColour: kWhite,
        boxShadowSpreadRadius: 0,
        height: 72.0.h,
        width: 375.0.w,
        containerChild: ListTile(
          leading: CircleAvatar(
            radius: 20.0.r,
            backgroundColor: const Color(0xFFF1EDFF),
            child: const Icon(Icons.lock, color: Color(0xFF100D40)),
          ),
          title: CustomText(text: title, fontSize: 14.0.sp),
          trailing: Icon(Icons.arrow_forward_ios, size: 22.0.sp),
        ),
      ),
    ),
  );
}
