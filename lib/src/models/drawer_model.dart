import '../utils/img_assets.dart';

class DrawerModel
{
  String title;
  String icon;
  DrawerModel({required this.title, required this.icon});
}

List<DrawerModel> drawerItems = [
  DrawerModel(title: 'Dashboard', icon: IconAssets.iconsMenuDashboard),
  DrawerModel(title: 'Transaction', icon: IconAssets.iconsMenuTran),
  DrawerModel(title: 'Task', icon: IconAssets.iconsMenuTask),
  DrawerModel(title: 'Documents', icon: IconAssets.iconsMenuDoc),
  DrawerModel(title: 'Store', icon: IconAssets.iconsMenuStore),
  DrawerModel(title: 'Notification', icon: IconAssets.iconsMenuNotification),
  DrawerModel(title: 'Profile', icon: IconAssets.iconsMenuProfile),
  DrawerModel(title: 'Settings', icon: IconAssets.iconsMenuSetting),
];