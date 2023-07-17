// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:responsiv_ui_example/src/utils/img_assets.dart';

class StorageFileModel {
  final String title;
  final String size;
  final double counter;
  final String icon;
  StorageFileModel({
    required this.title,
    required this.size,
    required this.counter,
    required this.icon,
  });
}

List<StorageFileModel> storageFileModelList = [
  StorageFileModel(
    title: 'Document Files',
    size: '1.3 GB',
    counter: 2.345,
    icon: IconAssets.iconsDocFile,
  ),
  StorageFileModel(
    title: 'Media Files',
    size: '15.3 GB',
    counter: 2.345,
    icon: IconAssets.iconsMediaFile,
  ),
  StorageFileModel(
    title: 'Other Files',
    size: '1.3 GB',
    counter: 2.345,
    icon: IconAssets.iconsFolder,
  ),
  StorageFileModel(
    title: 'Unknown',
    size: '1.3 GB',
    counter: 2.345,
    icon: IconAssets.iconsUnknown,
  ),
];
