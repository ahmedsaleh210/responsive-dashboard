import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsiv_ui_example/src/utils/extension.dart';

import '../../../../controller/home_controller.dart';
import '../../../../utils/constants.dart';
import 'profile_card.dart';
import 'search_field.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!context.isTinyTablet &&
            !context.isMobile &&
            !context.isTinyMobile) ...{
          Text("Dashboard", style: context.theme.textTheme.headlineMedium),
        } else ...{
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              context.read<HomeController>().controlMenu();
            },
          ),
        },
        if (!context.isMobile)
          Spacer(
            flex: context.resizeHelper<int>(mobile: 1, minTablet: 1, tablet: 1),
          ),
        const Expanded(child: SearchField()),
        const SizedBox(width: AppConstants.defaultPadding),
        const ProfileCard()
      ],
    );
  }
}
