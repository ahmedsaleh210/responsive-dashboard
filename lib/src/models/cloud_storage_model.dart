// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../utils/img_assets.dart';

class CloudStorageModel {
  final String icon;
  final String title;
  final String size;
  final double percentage;
  final Color color;
  final int filesNumber;
  CloudStorageModel({
    required this.icon,
    required this.title,
    required this.size,
    required this.percentage,
    required this.color,
    required this.filesNumber,
  });
}

List<CloudStorageModel> cloudStorageList = [
  CloudStorageModel(
    icon: IconAssets.iconsDocFile,
    title: 'Documents',
    size: '1.9 GB',
    percentage: 35,
    color: Colors.blue,
    filesNumber: 1328,
  ),
  CloudStorageModel(
    icon: IconAssets.iconsGoogleDrive,
    title: 'Google Drive',
    size: '2.9 GB',
    percentage: 50,
    color: const Color(0xFFFFA113),
    filesNumber: 1328,
  ),
  CloudStorageModel(
    icon: IconAssets.iconsOneDrive,
    title: 'One Drive',
    size: '1.9 GB',
    percentage: 40,
    color: const Color(0xFFA4CDFF),
    filesNumber: 1328,
  ),
  CloudStorageModel(
    icon: IconAssets.iconsDropBox,
    title: 'Drop Box',
    size: '7.9 GB',
    percentage: 75,
    color: const Color(0xFF007EE5),
    filesNumber: 1328,
  ),
];
