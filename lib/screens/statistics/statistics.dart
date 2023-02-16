import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/providers/transactions_provider/transactions_provider.dart';
import 'package:simservers/widgets/app_bar/app_bar.dart';
import 'package:simservers/widgets/build_line_chart/build_line_chart.dart';
import 'package:simservers/widgets/custom_container/custom_container.dart';
import 'package:simservers/widgets/custom_text.dart';
import 'package:simservers/widgets/drawer_widget/drawer_widget.dart';
import 'package:simservers/widgets/dropdown_button/dropdown_button.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({Key? key}) : super(key: key);

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  late String currenciesDropdownValue =
      context.read<TransactionProvider>().currencies[1];
  late String periodDropdownValue =
      context.read<TransactionProvider>().period[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, 1),
      drawer: const DrawerWidget(),
      body: SizedBox(
        child: Padding(
          padding: EdgeInsets.only(left: 21.0.w, right: 21.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Divider(thickness: 1.0.h, color: kBlack, indent: 0.0, endIndent: 0.0),
              SizedBox(height: 26.75.h),
              Padding(
                padding: EdgeInsets.only(right: 19.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 78.0.w,
                      height: 38.0.h,
                      child: Dropdownbutton(
                        dropdownValue: currenciesDropdownValue,
                        items: context
                            .read<TransactionProvider>()
                            .currencies
                            .map((e) => DropdownMenuItem<String>(
                                value: e,
                                child: Center(
                                  child: CustomText(
                                    text: e,
                                    fontSize: 12.0.sp,
                                    colour: const Color(0xFF333333),
                                  ),
                                )))
                            .toList(),
                        onDropdownSelected: (value) {
                          setState(() {
                            currenciesDropdownValue = value!;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 15.0.w),
                    SizedBox(
                      width: 78.0.w,
                      height: 38.0.h,
                      child: Dropdownbutton(
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
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.0.h),
              CustomText(
                text: "Chart",
                colour: const Color(0xFF323236),
                fontSize: 16.0.sp,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 7.0.h),
              Center(
                child: CustomContainer(
                  borderRadius: BorderRadius.circular(10.0.r),
                  height: 317.0.h,
                  width: 386.0.w,
                  containerChild: Stack(
                    children: [
                      const BuildLineChart(),
                      Positioned(
                        top: 14.0.h,
                        left: 14.0.w,
                        child: SizedBox(
                          height: 25.0.h,
                          width: 98.0.w,
                          child: CustomText(
                            text: periodDropdownValue,
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 40.0.h,
                        left: 14.0.w,
                        child: SizedBox(
                          height: 17.0.h,
                          width: 73.0.w,
                          child: CustomText(
                            text: "+2.36 (2%)",
                            colour: const Color(0xFF23B371),
                            fontSize: 13.0.sp,
                          ),
                        ),
                      ),
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
                            color: const Color(0xFF23B371), fontSize: 12.0.sp),
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
        ),
      ),
    );
  }
}
