import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/screens/notifications/notifications.dart';
import 'package:simservers/widgets/custom_text.dart';

AppBar appBarWidget(context, selectedIndex)  {
  return AppBar(
    leading: Builder(
      builder: (context) {
        return IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: FaIcon(
            FontAwesomeIcons.bars,
            color: ( selectedIndex == 1 || selectedIndex == 2) ? kBlack : kWhite,
          ),
        );
      },
    ),
    elevation: 0.0,
    backgroundColor:( selectedIndex == 1 || selectedIndex == 2) ? kTransparent : kPrimaryBlue,
    title: CustomText(
      text: selectedIndex == 0
          ? ""
          : selectedIndex == 1
          ? "Statistics"
          : selectedIndex == 2
          ? "Wallet History"
          : selectedIndex == 3
          ? "User Panel"
          : selectedIndex == 4
          ? "Settings"
          : "",
      colour: (selectedIndex == 1 || selectedIndex == 2) ? kBlack : kWhite,
    ),
    centerTitle: true,
    actions: [
      IconButton(
        onPressed: (){
          Navigator.pushNamed(context, Notifications.id);
        },
        icon: Icon(Icons.notifications_none_outlined,
        color:( selectedIndex == 1 || selectedIndex == 2) ? kBlack : kWhite,)
      ),
      SizedBox(width: 19.0.w),
    ],
  );
}