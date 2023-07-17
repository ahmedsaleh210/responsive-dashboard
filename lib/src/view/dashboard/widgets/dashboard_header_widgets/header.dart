import 'package:flutter/material.dart';
import 'package:responsiv_ui_example/src/utils/extension.dart';
import 'package:responsiv_ui_example/src/view/dashboard/widgets/dashboard_header_widgets/profile_card.dart';

import '../../../../utils/constants.dart';
import '../header_widgets.dart/search_field.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Dashboard", style: context.theme.textTheme.headlineMedium),
        const Spacer(),
        const Expanded(child: SearchField()),
        const SizedBox(width: AppConstants.defaultPadding),
        const ProfileCard()
      ],
    );
  }
}
