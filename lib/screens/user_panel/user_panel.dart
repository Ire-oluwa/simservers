import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/screens/register_sim_service/register_sim_service.dart';
import 'package:simservers/widgets/custom_text.dart';

class UserPanelScreen extends StatefulWidget {
  const UserPanelScreen({Key? key}) : super(key: key);

  @override
  State<UserPanelScreen> createState() => _UserPanelScreenState();
}

class _UserPanelScreenState extends State<UserPanelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: kContainerWhite,
          child: Padding(
            padding: EdgeInsets.only(left: 15.0.w, right: 19.0.w),
            child: ListView(
              children: [
                SizedBox(height: 19.75.h),
                _buildListTile(
                  context,
                  Icons.lock,
                  "Register Sim Services",
                  () {
                    Navigator.of(context).pushNamed(RegisterSimService.id);
                  },
                ),
                SizedBox(height: 16.0.h),
                _buildListTile(
                  context,
                  Icons.lock,
                  "Activate Cloud Services",
                  () {},
                ),
                SizedBox(height: 16.0.h),
                _buildListTile(
                  context,
                  Icons.lock,
                  "Activate SME Cloud",
                  () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildListTile(BuildContext context, IconData leadingIcon, String title,
    void Function() onClick) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5.0.r),
      boxShadow: const [
        BoxShadow(color: kWhite, spreadRadius: 0, blurRadius: 1),
      ],
    ),
    child: ListTile(
      leading: CircleAvatar(
          backgroundColor: const Color(0xFFF1EDFF),
          radius: 20.0.r,
          child: const Icon(Icons.lock)),
      title: CustomText(text: title, colour: const Color(0xFF666666)),
      trailing: Icon(
        Icons.arrow_forward_ios_outlined,
        color: const Color(0xFF999999),
        size: 22.0.sp,
      ),
      onTap: onClick,
    ),
  );
}
