import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/screens/home_screen/home_screen.dart';
import 'package:simservers/screens/settings/settings.dart';
import 'package:simservers/screens/statistics/statistics.dart';
import 'package:simservers/screens/transactions/transactions.dart';
import 'package:simservers/screens/user_panel/user_panel.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const StatisticsScreen(),
    const TransactionsScreen(),
    const UserPanelScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kPrimaryBlue,
        leading: const Icon(Icons.tune_outlined),
        actions: [
          const Icon(Icons.notifications_none_outlined),
          SizedBox(width: 19.0.w),
        ],
      ),
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: [],
      ),
    );
  }
}
