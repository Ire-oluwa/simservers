import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/screens/home_screen/home_screen.dart';
import 'package:simservers/screens/settings/settings.dart';
import 'package:simservers/screens/statistics/statistics.dart';
import 'package:simservers/screens/transactions/transactions.dart';
import 'package:simservers/screens/user_panel/user_panel.dart';
import 'package:simservers/utilities/navbar_item/navbar_item.dart';
import 'package:simservers/widgets/custom_text.dart';

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
    const StatisticsScreen(),
    const TransactionsScreen(),
    const UserPanelScreen(),
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
          boxShadow: const [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          items: bottomNavBarItems(),
          onTap: _onItemTapped,
          unselectedItemColor: const Color(0xFF83848B),
          selectedItemColor: const Color(0xFF100D40),
          type: BottomNavigationBarType.shifting,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: FaIcon(
                FontAwesomeIcons.bars,
                color: _selectedIndex == 2 ? kBlack : kWhite,
              ),
            );
          },
        ),
        elevation: 0.0,
        backgroundColor: _selectedIndex == 2 ? kTransparent : kPrimaryBlue,
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
          colour: _selectedIndex == 2 ? kBlack : kWhite,
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.notifications_none_outlined,
            color: _selectedIndex == 2 ? kBlack : kWhite,
          ),
          SizedBox(width: 19.0.w),
        ],
      ),
      body: _screens.elementAt(_selectedIndex),
      drawer: Drawer(
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
                () => const StatisticsScreen()),
            _listTile(context, Icons.help, "Help Center",
                () => const StatisticsScreen()),
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
      ),
      bottomNavigationBar: _showBottomNavigationBar(context),
    );
  }
}

List<BottomNavigationBarItem> bottomNavBarItems() {
  return NavBarItem.getNavBarItems()
      .map((e) => BottomNavigationBarItem(icon: e.icon, label: e.label))
      .toList();
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
