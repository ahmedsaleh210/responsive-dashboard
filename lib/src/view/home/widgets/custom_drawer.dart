import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/drawer_model.dart';
import '../../../utils/img_assets.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Image.asset(ImgAssets.imagesLogo)),
          ...List.generate(drawerItems.length, (index) {
            return _buildDrawerItem(context, drawerItems[index]);
          }),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(BuildContext context, DrawerModel item) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: SvgPicture.asset(
          item.icon,
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
        ),
        title: Text(
          item.title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
