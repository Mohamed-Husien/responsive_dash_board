import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int isTouched = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(getChartData());
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          isTouched =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          radius: isTouched == 0 ? 60 : 50,
          showTitle: false,
          value: 40,
          color: const Color(0xff208CC8),
        ),
        PieChartSectionData(
          radius: isTouched == 1 ? 60 : 50,
          showTitle: false,
          value: 25,
          color: const Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          radius: isTouched == 2 ? 60 : 50,
          showTitle: false,
          value: 20,
          color: const Color(0xff064061),
        ),
        PieChartSectionData(
          radius: isTouched == 3 ? 60 : 50,
          showTitle: false,
          value: 22,
          color: const Color(0xffE2DECD),
        ),
      ],
    );
  }
}
