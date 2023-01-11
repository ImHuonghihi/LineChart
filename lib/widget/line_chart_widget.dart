import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  final List<Color> gradientColors = [Colors.orange[400]!, Color.fromARGB(255, 128, 255, 139)!];

  @override
  Widget build(BuildContext context) => LineChart(LineChartData(
        minX: 0,
        maxX: 20,
        minY: 0,
        maxY: 6,
        gridData: FlGridData(
          show: true,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: const Color(0xff37434d),
              strokeWidth: 1,
            );
          },
          drawVerticalLine: true,
          getDrawingVerticalLine: (value) {
            return FlLine(
              color: const Color(0xff37434d),
              strokeWidth: 1,
            );
          },
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(0, 3),
              FlSpot(4, 2),
              FlSpot(8, 5),
              FlSpot(12, 3.1),
              FlSpot(16, 4),
              FlSpot(23, 3),
            ],
            isCurved: true,
            colors: gradientColors,
            barWidth: 5,
            isStrokeCapRound: true,
            // dotData: FlDotData(
            //   show: false,
            // ),
            belowBarData: BarAreaData(
              show: true,
              colors: gradientColors
                  .map((color) => color.withOpacity(0.9))
                  .toList(),
            ),
          ),
        ],
      ));
}
