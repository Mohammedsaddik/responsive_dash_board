import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  _IncomeChartState createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int touchedIndex = -1; // Track which section is touched

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          sectionsSpace: 0.0,
          pieTouchData: PieTouchData(
            touchCallback: (FlTouchEvent event, pieTouchResponse) {
              setState(() {
                if (!event.isInterestedForInteractions ||
                    pieTouchResponse == null ||
                    pieTouchResponse.touchedSection == null) {
                  touchedIndex = -1;
                  return;
                }
                touchedIndex =
                    pieTouchResponse.touchedSection!.touchedSectionIndex;
              });
            },
          ),
          sections: getSections(),
          startDegreeOffset: 180, // Animation starting angle
          centerSpaceRadius: 40,
        ),
        swapAnimationDuration:
            const Duration(milliseconds: 50), // Animation duration
        swapAnimationCurve: Curves.easeInOut, // Animation curve
      ),
    );
  }

  List<PieChartSectionData> getSections() {
    return [
      PieChartSectionData(
        color: const Color(0xFF208BC7),
        value: 40,
        radius: touchedIndex == 0 ? 20 : 10,
        showTitle: false,
      ),
      PieChartSectionData(
        color: const Color(0xFF4DB7F2),
        value: 25,
        radius: touchedIndex == 1 ? 20 : 10,
        showTitle: false,
      ),
      PieChartSectionData(
        color: const Color(0xFF064060),
        value: 20,
        radius: touchedIndex == 2 ? 20 : 10,
        showTitle: false,
      ),
      PieChartSectionData(
        color: const Color(0xFFE2DECD),
        value: 22,
        radius: touchedIndex == 3 ? 20 : 10,
        showTitle: false,
      ),
    ];
  }
}
