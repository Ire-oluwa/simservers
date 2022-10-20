import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/providers/transactions_provider/transactions_provider.dart';
import 'package:simservers/widgets/build_line_chart/build_line_chart.dart';
import 'package:simservers/widgets/custom_container/custom_container.dart';
import 'package:simservers/widgets/custom_text.dart';
import 'package:simservers/widgets/dropdown_button/dropdown_button.dart';

class AdminStatistics extends StatefulWidget {
  const AdminStatistics({Key? key}) : super(key: key);
  static const String id = "admin statistics";

  @override
  State<AdminStatistics> createState() => _AdminStatisticsState();
}

class _AdminStatisticsState extends State<AdminStatistics> {
  late String periodDropdownValue =
  context.read<TransactionProvider>().period[0];
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            thickness: 1.0.h,
            color: kBlack,
            indent: 0.0,
            endIndent: 0.0,
          ),
          Dropdownbutton(
            dropdownValue: periodDropdownValue,
            items: context
                .read<TransactionProvider>()
                .period
                .map(
                  (e) => DropdownMenuItem<String>(
                value: e,
                child: Center(
                  child: CustomText(
                    text: e,
                    fontSize: 12.0.sp,
                    colour: const Color(0xFF333333),
                  ),
                ),
              ),
            )
                .toList(),
            onDropdownSelected: (value) {
              setState(() {
                periodDropdownValue = value!;
              });
            },
          ),
          SizedBox(height: 24.0.h),
          Center(
            child: CustomContainer(
              borderRadius: BorderRadius.circular(10.0.r),
              height: 317.0.h,
              width: 386.0.w,
              containerChild: Stack(
                children: const [
                  BuildLineChart(),
                ],
              ),
            ),
          ),
          SizedBox(height: 37.0.h),
          CustomContainer(
            height: 113.0.h,
            width: 179.0.w,
            colour: const Color(0xFFF0F4FF),
            padding: EdgeInsets.only(left: 16.0.w),
            containerChild: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomText(
                  text: "Total Income",
                  fontSize: 12.0.sp,
                  colour: const Color(0xFF5B5B66),
                ),
                CustomText(
                    text: "N400,345",
                    fontSize: 18.0.sp,
                    colour: const Color(0xFF0C0C0C),
                    fontWeight: FontWeight.w600),
                RichText(
                  text: TextSpan(
                    text: "+2% ",
                    style: TextStyle(
                        color: Color(0xFF23B371), fontSize: 12.0.sp),
                    children: [
                      TextSpan(
                        text: "than last week",
                        style: TextStyle(
                            color: const Color(0xFF434244),
                            fontSize: 12.0.sp),
                      ),
                    ],
                  ),
                ),
                // CustomText(text: "+2% than last week", fontSize: 12.0.sp, colour: const Color(0xFF0C0C0C), fontWeight: FontWeight.w600),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
