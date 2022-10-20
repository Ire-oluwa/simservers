import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/widgets/custom_text.dart';
import 'package:simservers/widgets/custom_text_button/custom_text_button.dart';
import 'package:simservers/widgets/drawer_widget/drawer_widget.dart';

class AdminPanelScreen extends StatefulWidget {
  const AdminPanelScreen({Key? key}) : super(key: key);

  @override
  State<AdminPanelScreen> createState() => _AdminPanelScreenState();
  static const String id = "admin panel screen";
}

class _AdminPanelScreenState extends State<AdminPanelScreen> {
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
        padding: EdgeInsets.only(left: 21.0.w, right: 20.0.w),
        child: Column(
          children: [
            Divider(
                color: kBlack, thickness: 1.0.h, indent: 0.0, endIndent: 0.0),
            SizedBox(height: 24.75.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Manage members",
                  fontSize: 16.0.sp,
                  colour: const Color(0xFF333333),
                ),
                CustomTextButton(
                    title: "Delete",
                    onClick: () {},
                    backgroundColour: const Color(0xFFFE7062),
                    height: 29.0.h,
                    width: 113.0.w,
                    textColour: kWhite),
              ],
            ),
            SizedBox(height: 18.0.h),
          ],
        ),
      ),
    );
  }
}
