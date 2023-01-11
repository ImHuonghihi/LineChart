import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 35,
          getTextStyles: (context, axisValue) => TextStyle(
            color: Color(0xff68737d),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return '0h';
              case 4:
                return '4H';
              case 8:
                return '8H';
              case 12:
                return '12H';
              case 16:
                return '16H';
              case 20:
                return '20';
              case 23:
                return '23H';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context, axisValue) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return '0.0';
              case 1:
                return '1.0';
              case 3:
                return '3.0';
              case 5:
                return '5.0';
              case 7:
                return '7.0';
              case 9:
                return '9.0';
              case 11:
                return '11.0';
              case 12:
                return '11+';
            }
            return '';
          },
          reservedSize: 35,
          margin: 12,
        ),
      );
}
