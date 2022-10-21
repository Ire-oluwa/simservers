import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/widgets/custom_text.dart';
class ManageUser extends StatelessWidget {
  const ManageUser({Key? key}) : super(key: key);
  static const String id = "manage user";

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
              icon: const Icon(
               Icons.arrow_back_ios,
                color: kBlack,
              ),
            );
          },
        ),
      ),
    );
  }
}
