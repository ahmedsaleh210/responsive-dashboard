import 'package:flutter/material.dart';
import 'package:responsiv_ui_example/src/utils/extension.dart';
import 'package:responsiv_ui_example/src/view/dashboard/widgets/storage_details_widgets/storage_details_body.dart';

import '../../utils/constants.dart';
import 'widgets/header_widgets.dart/header.dart';
import 'widgets/my_files_widgets/my_files_body.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(AppConstants.defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [   
            const Header(),
            const SizedBox(height: AppConstants.defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                    flex: 5,
                    child: Column(children: [
                      MyFilesBody(),
                    ])),
                if (!context.isMobile &&
                    !context.isTinyMobile &&
                    !context.isTinyTablet) ...{
                  const SizedBox(width: AppConstants.defaultPadding),
                  const Expanded(flex: 2, child: StorageDetails())
                }
              ],
            )
          ],
        ),
      ),
    );
  }
}
