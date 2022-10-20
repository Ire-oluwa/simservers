import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simservers/widgets/line_chart_title/line_chart_title.dart';

class BuildLineChart extends StatelessWidget {
  const BuildLineChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 0,
        maxX: 7,
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
            dotData: FlDotData(
              show: false,
            ),
            barWidth: 5.0.w,
            color: Color(0xFF23B371),
            isCurved: true,
            spots: [
              FlSpot(0.3, 1.0),
              FlSpot(1.5, 1.5),
              FlSpot(2, 1.7),
              FlSpot(2.5, 1.4),
              FlSpot(3, 3.6),
              FlSpot(3.5, 3.7),
              FlSpot(4, 2),
              FlSpot(4.5, 2.4),
              FlSpot(6.5, 3),
            ],
          ),
        ],
      ),
    );
  }
}
