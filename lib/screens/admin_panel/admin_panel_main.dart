import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/screens/admin_panel/admin_panel_manage_members/manage_members.dart';
import 'package:simservers/screens/admin_panel/admin_settings/admin_settings.dart';
import 'package:simservers/screens/admin_panel/admin_statistics/admin_statistics.dart';
import 'package:simservers/widgets/custom_container/custom_container.dart';
import 'package:simservers/widgets/custom_text.dart';
import 'package:simservers/widgets/drawer_widget/drawer_widget.dart';

class AdminPanel extends StatelessWidget {
  const AdminPanel({Key? key}) : super(key: key);
  static const String id = "admin panel";

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
                Scaffold.of(context).openDrawer();
              },
              icon: const FaIcon(
                FontAwesomeIcons.bars,
                color: kBlack,
              ),
            );
          },
        ),
      ),
      drawer: const DrawerWidget(),
      body: Padding(
        padding: EdgeInsets.only(left: 16.0.w, right: 10.0.w),
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(height: 16.0.h),
            CustomText(
              text: "Account",
              fontSize: 16.0.sp,
              fontWeight: FontWeight.w500,
              colour: const Color(0xFF333333),
            ),
            SizedBox(height: 24.75.h),
            _buildAdminPanelTile(
              context,
              "Manage members",
              () {
                Navigator.pushNamed(context, ManageMembers.id);
              },
            ),
            _buildAdminPanelTile(
              context,
              "Statistics",
              () {
                Navigator.pushNamed(context, AdminStatistics.id);
              },
            ),
            _buildAdminPanelTile(
              context,
              "Settings",
              () {
                Navigator.pushNamed(context, AdminSettings.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildAdminPanelTile(context, String title, void Function() onClick) {
  return GestureDetector(
    onTap: onClick,
    child: Padding(
      padding: EdgeInsets.only(bottom: 3.0.h),
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
