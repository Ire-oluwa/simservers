import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/screens/api_settings/api_settings.dart';
import 'package:simservers/screens/edit_profile/edit_profile.dart';
import 'package:simservers/screens/reset_api_key/reset_api_key.dart';
import 'package:simservers/screens/set_transaction_pin/set_transaction_pin.dart';
import 'package:simservers/screens/settings/change_password_in_settings/change_password_in_settings.dart';
import 'package:simservers/widgets/app_bar/app_bar.dart';
import 'package:simservers/widgets/custom_container/custom_container.dart';
import 'package:simservers/widgets/custom_text.dart';
import 'package:simservers/widgets/drawer_widget/drawer_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, 4),
      drawer: const DrawerWidget(),
      body: CustomContainer(
        colour: kContainerWhite,
        height: 484.0.h,
        width: 407.0.w,
        containerChild: SizedBox(
          height: 440.0.h,
          child: ListView(
            children: [
              SizedBox(height: 24.75.h),
              Padding(
                padding: EdgeInsets.only(left: 58.0.w),
                child: CustomText(
                  text: "Account",
                  fontSize: 16.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0.h),
              _buildSettingsTile(context, Icons.person, "Edit profile",
                  Icons.arrow_forward_ios, () {
                Navigator.pushNamed(context, EditProfileScreen.id);
              }),
              SizedBox(height: 16.0.h),
              _buildSettingsTile(
                context,
                Icons.lock,
                "Change Password",
                Icons.arrow_forward_ios,
                () {
                  Navigator.pushNamed(context, ChangePasswordInSettings.id);
                },
              ),
              SizedBox(height: 16.0.h),
              _buildSettingsTile(
                context,
                Icons.lock,
                "Set Transaction Pin",
                Icons.arrow_forward_ios,
                () {
                  Navigator.pushNamed(context, SetTransactionPin.id);
                },
              ),
              SizedBox(height: 16.0.h),
              _buildSettingsTile(
                context,
                Icons.lock,
                "Reset Api Key",
                Icons.arrow_forward_ios,
                () {
                  Navigator.pushNamed(context, ResetApiKey.id);
                },
              ),
              SizedBox(height: 16.0.h),
              _buildSettingsTile(
                context,
                Icons.lock,
                "Api Setting",
                Icons.arrow_forward_ios,
                () {
                  Navigator.pushNamed(context, ApiSettings.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildSettingsTile(context, IconData iconName, String title,
    IconData trailingIconName, void Function() onClick) {
  return GestureDetector(
    onTap: onClick,
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
          child: Icon(iconName, color: const Color(0xFF100D40)),
        ),
        title: CustomText(text: title, fontSize: 14.0.sp),
        trailing: Icon(trailingIconName, size: 22.0.sp),
      ),
    ),
  );
}
