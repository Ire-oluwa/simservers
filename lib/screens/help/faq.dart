import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/widgets/custom_text.dart';

class FAQ extends StatelessWidget {
  const FAQ({Key? key}) : super(key: key);
  static const String id = "faq";

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
          text: "FAQ",
          fontSize: 18.0.sp,
          fontWeight: FontWeight.w500,
          colour: kBlack,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            child: Padding(
              padding: EdgeInsets.only(left: 9.0.w, right: 9.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 53.0.h),
                  _buildQuestion("When can I sign up?", context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildQuestion(question, context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Divider(
        color: Color(0xFFB7B7BD),
        // thickness: 1.0.h,
      ),
      Padding(
        padding: EdgeInsets.only(top: 13.0.h ,bottom: 13.0.h),
        child: GestureDetector(
          child: Container(
            padding: EdgeInsets.only(left: 19.0.w),
            child: CustomText(
              text: question,
              fontSize: 18.0.sp,
              colour: const Color(0xFF333333),
            ),
          ),
        ),
      ),
    ],
  );
}

// Widget _buildAnswer(){
//
// }