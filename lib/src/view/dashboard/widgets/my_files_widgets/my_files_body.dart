import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/constants.dart';
import 'cloud_storage_card_list.dart';
import 'my_files_header.dart';
import 'table_card.dart';

class MyFilesBody extends StatelessWidget {
  const MyFilesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyFilesHeader(),
        const SizedBox(height: AppConstants.defaultPadding),
        const CloudStorageCardList(),
        SizedBox(
          height: 3.h,
        ),
        const Divider(
          thickness: 1.5,
          color: AppColors.secondaryColor,
        ),
        const TableCard()
      ],
    );
  }
}
