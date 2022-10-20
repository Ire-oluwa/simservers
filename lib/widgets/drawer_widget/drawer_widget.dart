import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/screens/admin_panel/admin_panel.dart';
import 'package:simservers/screens/dashboard/dashboard.dart';
import 'package:simservers/screens/help/help_and_support.dart';
import 'package:simservers/screens/settings/settings.dart';
import 'package:simservers/screens/statistics/statistics.dart';
import 'package:simservers/screens/transactions/transactions.dart';
import 'package:simservers/screens/user_panel/user_panel.dart';
import 'package:simservers/widgets/custom_text.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF1A2B88),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                const CircleAvatar(),
                SizedBox(width: 21.6.w),
                const CustomText(text: "David James", colour: kWhite),
                SizedBox(width: 83.0.w),
                IconButton(
                  icon: const Icon(Icons.close, color: kWhite),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
          _listTile(
              context, Icons.home, "Home", () => const DashboardScreen()),
          _listTile(context, Icons.trending_up_outlined, "Statistics",
                  () => const StatisticsScreen()),
          _listTile(context, Icons.rotate_left, "Transactions",
                  () => const TransactionsScreen()),
          _listTile(context, Icons.person_outline, "User Panel",
                  () => const UserPanelScreen()),
          _listTile(context, Icons.settings_outlined, "Settings",
                  () => const SettingsScreen()),
          _listTile(context, Icons.person, "Admin Panel",
                  () => const AdminPanelScreen()),
          _listTile(context, Icons.help, "Help Center",
                  () => const HelpAndSupport()),
          SizedBox(height: 184.77.h),
          const Align(
            alignment: Alignment.bottomLeft,
            child: ListTile(
              leading: Icon(
                Icons.output_outlined,
                color: kWhite,
              ),
              title: CustomText(text: "Log Out", colour: kWhite),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _listTile(BuildContext context, IconData icon, String title,
    Widget Function() screen) {
  return ListTile(
      leading: Icon(icon, color: kWhite),
      title: CustomText(text: title, colour: kWhite),
      onTap: () {
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen()),
        );
      });
}