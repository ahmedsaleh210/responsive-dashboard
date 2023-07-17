import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsiv_ui_example/src/utils/extension.dart';
import 'package:responsiv_ui_example/src/view/home/widgets/custom_drawer.dart';

import '../../controller/home_controller.dart';
import '../dashboard/dashboard_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<HomeController>().scaffoldKey,
      drawer: const CustomDrawer(),
      body: SafeArea(
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          if (context.isDesktop) const Expanded(child: CustomDrawer()),
          const Expanded(flex: 5, child: DashboardScreen()),
        ]),
      ),
    );
  }
}
