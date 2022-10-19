import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/constants/app_constants.dart';
import 'package:simservers/widgets/custom_text.dart';
import 'package:simservers/widgets/line_chart_title/line_chart_title.dart';
import 'package:simservers/widgets/quick_option_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xFFF4F7FB),
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  // padding: EdgeInsets.only(top: 60.0.h),
                  height: 270.0.h,
                  width: 428.0.w,
                  decoration: BoxDecoration(
                    color: kPrimaryBlue,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width,
                        MediaQuery.of(context).size.width * 0.2,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 20.0.h,
                      left: 28.0.w,
                      right: 19.0.w,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            CustomText(text: "Welcome!", colour: kWhite),
                            CustomText(text: "Account Numbers", colour: kWhite),
                          ],
                        ),
                        SizedBox(height: 5.0.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            //TODO: this should return the actual name
                            CustomText(text: "Potter", colour: kWhite),
                            CustomText(
                                text: "3245234312 (Wema)", colour: kWhite),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            CustomText(
                              text: "4356754312 (Rolez)",
                              colour: kWhite,
                            ),
                          ],
                        ),
                        SizedBox(height: 35.0.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            CustomText(text: "Naira Balance", colour: kWhite),
                            CustomText(text: "MTN CG Balance", colour: kWhite),
                            CustomText(
                                text: "Airtel CG Balance", colour: kWhite),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            CustomText(text: "₦346,300", colour: kWhite),
                            CustomText(text: "500GB", colour: kWhite),
                            CustomText(text: "100GB", colour: kWhite),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 23.0.h),
                Row(
                  children: [
                    SizedBox(width: 28.0.w),
                    CustomText(
                      text: "Quick Options",
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.bold,
                      colour: const Color(0xFF1A2B88),
                    ),
                  ],
                ),
                SizedBox(height: 17.0.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    QuickOption(
                      onClick: () {},
                      backgroundColour: kSubmissionButtonColour,
                      iconData: Icons.add,
                      firstText: "Add",
                      secondText: "New API",
                    ),
                    SizedBox(width: 10.77.w),
                    QuickOption(
                      onClick: () {},
                      backgroundColour: kSubmissionButtonColour,
                      iconData: Icons.open_in_new_outlined,
                      firstText: "Register",
                      secondText: "Sim Services",
                    ),
                    SizedBox(width: 10.77.w),
                    QuickOption(
                      onClick: () {},
                      backgroundColour: kSubmissionButtonColour,
                      iconData: Icons.open_in_new_outlined,
                      firstText: "Activate",
                      secondText: "Cloud Services",
                    ),
                  ],
                ),
                SizedBox(height: 11.77.h),
                Container(
                  height: 438.0.h,
                  width: 428.0.w,
                  decoration: BoxDecoration(
                    color: kContainerWhite,
                    // color: Colors.green,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.0.r),
                      topRight: Radius.circular(60.0.r),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 29.0.h,
                      left: 21.0.w,
                      right: 21.0.w,
                    ),
                    child: Container(
                      width: 386.0.w,
                      height: 317.0.h,
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        color: Color(0xFFF2F2F2),
                        borderRadius: BorderRadius.circular(8.0.r),
                      ),
                      child: _buildLineChart(),
                    ),
                  ),
                ),
                SizedBox(height: 27.0.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildLineChart() {
  return LineChart(
    LineChartData(
      minX: 0,
      maxX: 6,
      minY: 0,
      maxY: 5,
      titlesData: LineChartTitle.getTitleData(),
      gridData: FlGridData(
        drawVerticalLine: false,
        // getDrawingHorizontalLine: (value){
        //   return FlLine();
        // },
      ),
      borderData: FlBorderData(
        show: false,
      ),
      lineBarsData: [
        LineChartBarData(
          dotData: FlDotData(show: false,),
          barWidth: 5.0.w,
          color: Color(0xFF23B371),
          isCurved: true,
          spots: [
            FlSpot(0.3, 1.5),
            FlSpot(1.5, 2.2),
            FlSpot(2, 3),
            FlSpot(3, 3.5),
            FlSpot(4, 2),
            FlSpot(5, 4),
          ],
        ),
      ],
    ),
  );
}
