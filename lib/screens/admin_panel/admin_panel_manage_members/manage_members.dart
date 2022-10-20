import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/screens/admin_panel_manage_user_redirect/manage_user.dart';
import 'package:simservers/screens/register_sim_service/delete_device.dart';
import 'package:simservers/widgets/custom_container/custom_container.dart';
import 'package:simservers/widgets/custom_text.dart';
import 'package:simservers/widgets/custom_text_button/custom_text_button.dart';
import 'package:simservers/widgets/drawer_widget/drawer_widget.dart';

class ManageMembers extends StatefulWidget {
  const ManageMembers({Key? key}) : super(key: key);

  @override
  State<ManageMembers> createState() => _ManageMembersState();
  static const String id = "manage members";
}

class _ManageMembersState extends State<ManageMembers> {
  late List<bool> isChecked = List<bool>.filled(8, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: "Admin Panel",
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
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios, color: kBlack),
            );
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 21.0.w, right: 20.0.w),
        child: Column(
          children: [
            Divider(
                color: kBlack, thickness: 1.0.h, indent: 0.0, endIndent: 0.0),
            SizedBox(height: 24.75.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Manage members",
                  fontSize: 16.0.sp,
                  colour: const Color(0xFF333333),
                ),
                CustomTextButton(
                  title: "Delete",
                  onClick: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Delete(
                          onClick: () {},
                          title: "Are you sure you want to delete this user?",
                        );
                      },
                    );
                  },
                  backgroundColour: const Color(0xFFFE7062),
                  height: 39.0.h,
                  width: 113.0.w,
                  textColour: kWhite,
                ),
              ],
            ),
            SizedBox(height: 18.0.h),
            ListView.builder(
              itemCount: 8,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 3.0.h),
                  child: CustomContainer(
                    height: 53.86.h,
                    width: 387.0.w,
                    containerChild: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                            value: isChecked[index],
                            onChanged: (value) {
                              setState(() {
                                isChecked[index] = value!;
                              });
                            }),
                        CustomText(
                          text: "Suleiman",
                          fontSize: 12.62.sp,
                          fontWeight: FontWeight.w500,
                          colour: const Color(0xFF323C47),
                        ),
                        CustomText(
                          text: "3234",
                          fontSize: 12.62.sp,
                          fontWeight: FontWeight.w500,
                          colour: const Color(0xFF707683),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, ManageUser.id);
                          },
                          child: CustomText(
                            text: "Manage User",
                            colour: const Color(0xFF707683),
                            fontSize: 10.94.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
