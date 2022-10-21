import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/screens/notifications_view/notifications_view.dart';
import 'package:simservers/widgets/custom_text.dart';
import 'package:simservers/widgets/custom_text_button/custom_text_button.dart';
import 'package:simservers/widgets/drawer_widget/drawer_widget.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);
  static const String id = "notifications";

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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 30.0.w, right: 24.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 39.0.h),
              CustomText(
                text: "Today",
                colour: const Color(0xFF757575),
                fontSize: 16.0.sp,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 13.0.h),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 12,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 61.0.h,
                    width: 374.w,
                    child: ListTile(
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40.0.h,
                            width: 250.w,
                            child: CustomText(
                              text:
                                  "You received a payment of N95,000 from Peace Adedokun",
                              fontSize: 13.0.sp,
                            ),
                          ),
                          CustomText(
                            text:
                                "${DateTime.now().hour} : ${DateTime.now().minute}",
                            fontSize: 13.0.sp,
                          ),
                        ],
                      ),
                      trailing: CustomTextButton(
                        title: "View",
                        onClick: () {
                          Navigator.pushNamed(context, NotificationsView.id);
                        },
                        borderRadius: 15.0.r,
                        backgroundColour: const Color(0xFF1A2B88),
                        height: 28.6.h,
                        width: 54.0.w,
                        textColour: kWhite,
                        fontSize: 10.0.sp,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    indent: 0.0,
                    endIndent: 0.0,
                    color: Colors.grey,
                    thickness: 1.0.h,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
