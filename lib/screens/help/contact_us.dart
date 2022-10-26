import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/widgets/custom_text.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);
  static const String id = "contact us";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhite,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: kBlack,
            size: 24.0.sp,
          ),
        ),
        title: CustomText(
          text: "Contact Us",
          fontSize: 18.0.sp,
          fontWeight: FontWeight.w500,
          colour: kBlack,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 27.0.w, right: 27.0.w, bottom: 13.0.h),
        child: SizedBox(
          child: contacts,
        ),
      ),
    );
  }
}

var contacts = ListView(
  children: [
    SizedBox(height: 33.0.h),
    const Divider(color: Color(0xFFB7B7BD)),
    Row(
      children: [
        SvgPicture.asset("assets/contact_us/whatsapp.svg"),
        SizedBox(width: 30.0.w),
        Padding(
          padding: EdgeInsets.only(top: 13.0.h ,bottom: 13.0.h),
          child: const CustomText(text: "08123456789"),
        ),
      ],
    ),
    const Divider(color: Color(0xFFB7B7BD)),
    Row(
      children: [
        SvgPicture.asset("assets/contact_us/facebook.svg"),
        SizedBox(width: 30.0.w),
        Padding(
          padding: EdgeInsets.only(top: 13.0.h ,bottom: 13.0.h),
          child: const CustomText(text: "@simservers.io"),
        ),
      ],
    ),
    const Divider(color: Color(0xFFB7B7BD)),
    Row(
      children: [
        SvgPicture.asset("assets/contact_us/instagram.svg"),
        SizedBox(width: 30.0.w),
        Padding(
          padding: EdgeInsets.only(top: 13.0.h ,bottom: 13.0.h),
          child: const CustomText(text: "@simservers.io"),
        ),
      ],
    ),
    const Divider(color: Color(0xFFB7B7BD)),
  ],
);
