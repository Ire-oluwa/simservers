import 'package:fl_chart/fl_chart.dart';

class LineChartTitle {
  static getTitleData() {
    return FlTitlesData(
      topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      bottomTitles: AxisTitles(
          sideTitles: SideTitles(
        showTitles: false,
            reservedSize: 30.0,
      )),
    );
  }
}
