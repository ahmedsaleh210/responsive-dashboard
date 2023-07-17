import 'package:flutter/material.dart';
import 'package:responsiv_ui_example/src/utils/extension.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/constants.dart';

class MyFilesHeader extends StatelessWidget {
  const MyFilesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("My Files", style: context.theme.textTheme.bodyLarge),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text("Add New"),
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              padding: const EdgeInsets.symmetric(
                  horizontal: AppConstants.defaultPadding * 1.2,
                  vertical: AppConstants.defaultPadding)),
        ),
      ],
    );
  }
}
