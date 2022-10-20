import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/widgets/custom_text.dart';

class LineChartTitle {
  static getTitleData() {
    return FlTitlesData(
      topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 30.0.h,
          getTitlesWidget: (value, meta){
            switch(value.toInt()){
              case 1:
                return CustomText(text: "12 Sep", colour: const Color(0xFF83848B), fontSize: 12.0.sp);
              case 2:
                return CustomText(text: "12 Sep", colour: const Color(0xFF83848B), fontSize: 12.0.sp);
              case 3:
                return CustomText(text: "12 Sep", colour: const Color(0xFF83848B), fontSize: 12.0.sp);
              case 4:
                return CustomText(text: "12 Sep", colour: const Color(0xFF83848B), fontSize: 12.0.sp);
              case 5:
                return CustomText(text: "12 Sep", colour: const Color(0xFF83848B), fontSize: 12.0.sp);
              case 6:
                return CustomText(text: "12 Sep", colour: const Color(0xFF83848B), fontSize: 12.0.sp);
              // case 7:
              //   return CustomText(text: "12 Sep", colour: const Color(0xFF83848B), fontSize: 12.0.sp);
            }
            return CustomText(text: "");
          },
        ),
      ),
    );
  }
}
