import 'package:flutter/material.dart';
import 'package:responsiv_ui_example/src/utils/extension.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/constants.dart';
import '../storage_details_widgets/storage_details_body.dart';
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
        if (context.isMobile || context.isTinyTablet) ...{
          const Padding(
            padding:
                EdgeInsets.symmetric(vertical: AppConstants.defaultPadding),
            child: StorageDetails(),
          )
        },
        const Divider(
          thickness: 1.5,
          color: AppColors.secondaryColor,
        ),
        const SizedBox(
          height: 3,
        ),
        const TableCard(),
      ],
    );
  }
}
