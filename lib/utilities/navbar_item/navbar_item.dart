import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavBarItem {
  NavBarItem(this.label, this.icon);

  final String label;
  final FaIcon icon;

  static List<NavBarItem> getNavBarItems() {
    return [
      NavBarItem(
          "Home",
          FaIcon(
            FontAwesomeIcons.houseChimneyWindow,
            size: 20.0.sp,
          )),
      NavBarItem(
          "Statistics",
          FaIcon(
            FontAwesomeIcons.arrowTrendUp,
            size: 20.0.sp,
          )),
      NavBarItem(
          "Transactions",
          FaIcon(
            FontAwesomeIcons.clockRotateLeft,
            size: 20.0.sp,
          )),
      NavBarItem(
          "User Panel",
          FaIcon(
            FontAwesomeIcons.user,
            size: 20.0.sp,
          )),
      NavBarItem(
          "Settings",
          FaIcon(
            FontAwesomeIcons.gear,
            size: 20.0.sp,
          )),
    ];
  }
}
