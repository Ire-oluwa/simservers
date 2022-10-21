import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/widgets/custom_text.dart';
import 'package:simservers/widgets/drawer_widget/drawer_widget.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({Key? key}) : super(key: key);
  static const String id = "notifications view";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kTransparent,
        elevation: 0.0,
        leading: Builder(
          builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const FaIcon(
                  FontAwesomeIcons.bars,
                  color: kBlack,
                ));
          },
        ),
        title: CustomText(
            text: "Notifications", colour: kBlack, fontSize: 16.0.sp),
        centerTitle: true,
      ),
      drawer: const DrawerWidget(),
    );
  }
}
