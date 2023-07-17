import 'package:flutter/material.dart';

import '../utils/colors.dart';

class PieChartModel {
  final double value;
  final double radius;
  final Color color;
  final bool showTitle;

  const PieChartModel({
    required this.value,
    required this.radius,
    required this.color,
    this.showTitle = false,
  });
}

List<PieChartModel> pieChartModelList = [
  const PieChartModel(
    value : 25,
    radius: 25,
    color: AppColors.primaryColor,
  ),
  const PieChartModel(
     value : 20,
    radius : 22,
    color: Color(0xFF26E5FF),
  ),
  const PieChartModel(
    value: 10,
    radius: 19,
    color: Color(0xFFFFCF26),
  ),
  const PieChartModel(
    value: 15,
    radius: 16,
    color: Color(0xFFEE2727),
  ),
   PieChartModel(
    value: 25,
    radius: 13,
    color: AppColors.primaryColor.withOpacity(0.1),
  ),
];