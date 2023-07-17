import 'package:flutter/material.dart';
import 'package:responsiv_ui_example/src/view/dashboard/widgets/storage_details_widgets/pie_chart.dart';
import 'package:responsiv_ui_example/src/view/dashboard/widgets/storage_details_widgets/storage_file_info_card.dart';

import '../../../../models/storage_file_model.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/constants.dart';


class StorageDetails extends StatelessWidget {
  const StorageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppConstants.defaultPadding),
      decoration: const BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Storage Details",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const CustomPieChart(),
          ...List.generate(storageFileModelList.length,
              (index) => StorageFileInfoCard(storageFileModelList[index]))
        ],
      ),
    );
  }
}
