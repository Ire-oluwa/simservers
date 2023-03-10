import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/screens/home_screen/home_screen.dart';
import 'package:simservers/screens/settings/settings.dart';
import 'package:simservers/screens/statistics/statistics.dart';
import 'package:simservers/screens/transactions/transactions.dart';
import 'package:simservers/screens/user_panel/user_panel.dart';
import 'package:simservers/utilities/navbar_item/navbar_item.dart';
import 'package:simservers/widgets/drawer_widget/drawer_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final String assetName = 'assets/svgs/icon-park_setting-config.svg';
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<Widget> _screens = [
    const HomeScreen(),
    // const StatisticsScreen(),
    const TransactionsScreen(),
    // const UserPanelScreen(),
    const SettingsScreen(),
  ];

  late int _selectedIndex = 0;

  _onItemTapped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _showBottomNavigationBar(context) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0.r),
            topRight: Radius.circular(15.0.r),
          ),
          // boxShadow: const [
          //   BoxShadow(color: Colors.black38, spreadRadius: 5, blurRadius: 10),
          // ],
        ),
        child: BottomNavigationBar(
          selectedFontSize: 18.0.sp,
          currentIndex: _selectedIndex,
          items: bottomNavBarItems(),
          onTap: _onItemTapped,
          unselectedItemColor: const Color(0xFF83848B),
          selectedItemColor: const Color(0xFF100D40),
          type: BottomNavigationBarType.fixed,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _screens.elementAt(_selectedIndex),
      drawer: const DrawerWidget(),
      bottomNavigationBar: _showBottomNavigationBar(context),
    );
  }
}



List<BottomNavigationBarItem> bottomNavBarItems() {
  return NavBarItem.getNavBarItems()
      .map((e) => BottomNavigationBarItem(icon: e.icon, label: e.label))
      .toList();
}

