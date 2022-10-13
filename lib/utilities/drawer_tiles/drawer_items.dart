import 'package:flutter/material.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/screens/home_screen/home_screen.dart';
import 'package:simservers/screens/settings/settings.dart';
import 'package:simservers/screens/statistics/statistics.dart';
import 'package:simservers/screens/transactions/transactions.dart';
import 'package:simservers/screens/user_panel/user_panel.dart';
import 'package:simservers/widgets/custom_text.dart';

class DrawerTiles {
  DrawerTiles(this.leadingIcon, this.titleText, this.onClick);
  final Widget leadingIcon;
  final Widget titleText;
  final void Function() onClick;

  static List<DrawerTiles> getDrawerTiles(context) {
    return [
      DrawerTiles(
        const Icon(Icons.home, color: kWhite),
        const CustomText(
          text: "Home",
          colour: kWhite,
        ),
        () {
          Navigator.of(context).pop();
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const HomeScreen()));
        },
      ),
      DrawerTiles(
        const Icon(Icons.trending_up_outlined, color: kWhite),
        const CustomText(
          text: "Statistics",
          colour: kWhite,
        ),
        () {
          Navigator.of(context).pop();
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const StatisticsScreen()));
        },
      ),
      DrawerTiles(
        const Icon(Icons.rotate_left, color: kWhite),
        const CustomText(
          text: "Transactions",
          colour: kWhite,
        ),
        () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const TransactionsScreen()));
        },
      ),
      DrawerTiles(
        const Icon(Icons.person_outline, color: kWhite),
        const CustomText(
          text: "User Panel",
          colour: kWhite,
        ),
        () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const UserPanelScreen()));
        },
      ),
      DrawerTiles(
        const Icon(Icons.settings, color: kWhite),
        const CustomText(
          text: "Settings",
          colour: kWhite,
        ),
        () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const SettingsScreen()));
        },
      ),
      DrawerTiles(
        const Icon(Icons.person, color: kWhite),
        const CustomText(
          text: "Admin Panel",
          colour: kWhite,
        ),
        () {
          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AdminPanelScreen()));
        },
      ),
      DrawerTiles(
        const Icon(Icons.help, color: kWhite),
        const CustomText(
          text: "Help and Support",
          colour: kWhite,
        ),
        () {
          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen()));
        },
      ),
    ];
  }

  static List<ListTile> getListTileItems(context) {
    return getDrawerTiles(context)
        .map((e) => ListTile(
              leading: e.leadingIcon,
              title: e.titleText,
              onTap: e.onClick,
            ))
        .toList();
  }
}
