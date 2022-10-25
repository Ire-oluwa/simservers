import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/widgets/custom_text.dart';
import 'package:simservers/widgets/drawer_widget/drawer_widget.dart';

class HelpAndSupport extends StatelessWidget {
  const HelpAndSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: "Help and Support",
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
      body: ListView(
        children: [
          Divider(color: kBlack, thickness: 1.0.h, indent: 0.0, endIndent: 0.0),
          ListTile(
            leading: CustomText(
              text: "FAQ",
              fontSize: 16.0.sp,
              colour: const Color(0xFF333333),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF82909D),
            ),
            onTap: () {

            },
          ),
          Divider(
            color: const Color(0xFFE7E8EA),
            thickness: 1.0.h,
            indent: 20.0,
            endIndent: 20.0,
          ),
          ListTile(
            leading: CustomText(
              text: "Contact Us",
              fontSize: 16.0.sp,
              colour: const Color(0xFF333333),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF82909D),
            ),
            onTap: () {},
          ),
          Divider(
            color: const Color(0xFFE7E8EA),
            thickness: 1.0.h,
            indent: 20.0,
            endIndent: 20.0,
          ),
        ],
      ),
    );
  }
}
