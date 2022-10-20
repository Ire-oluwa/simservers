import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/widgets/custom_text.dart';

AppBar AppBarWidget(_selectedIndex)  {
  return AppBar(
    leading: Builder(
      builder: (context) {
        return IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: FaIcon(
            FontAwesomeIcons.bars,
            color: ( _selectedIndex == 1 || _selectedIndex == 2) ? kBlack : kWhite,
          ),
        );
      },
    ),
    elevation: 0.0,
    backgroundColor:( _selectedIndex == 1 || _selectedIndex == 2) ? kTransparent : kPrimaryBlue,
    title: CustomText(
      text: _selectedIndex == 0
          ? ""
          : _selectedIndex == 1
          ? "Statistics"
          : _selectedIndex == 2
          ? "Wallet History"
          : _selectedIndex == 3
          ? "User Panel"
          : _selectedIndex == 4
          ? "Settings"
          : "",
      colour: (_selectedIndex == 1 || _selectedIndex == 2) ? kBlack : kWhite,
    ),
    centerTitle: true,
    actions: [
      Icon(
        Icons.notifications_none_outlined,
        color:( _selectedIndex == 1 || _selectedIndex == 2) ? kBlack : kWhite,
      ),
      SizedBox(width: 19.0.w),
    ],
  );
}