import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../models/pie_chart_model.dart';

class CustomPieChart extends StatelessWidget {
  const CustomPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: Stack(
          children: [
            PieChart(
              PieChartData(
                sectionsSpace: 0,
                centerSpaceRadius: 70,
                startDegreeOffset: -70,
                sections: List.generate(
                    pieChartModelList.length,
                    (index) => PieChartSectionData(
                          color: pieChartModelList[index].color,
                          value: pieChartModelList[index].value,
                          showTitle: pieChartModelList[index].showTitle,
                          radius: pieChartModelList[index].radius,
                        )),
              ),
            ),
            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    "29.1",
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 0.5),
                  ),
                  const Text("of 128GB")
                ],
              ),
            )
          ],
        ));
  }
}
