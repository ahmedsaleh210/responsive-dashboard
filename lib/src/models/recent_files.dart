// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../utils/img_assets.dart';

class RecentFile {
  final String icon, title, date, size;
  RecentFile({
    required this.size,
    required this.icon,
    required this.title,
    required this.date,
  });
}

List recentFilesList = [
  RecentFile(
    icon: IconAssets.iconsXdFile,
    title: "XD File",
    date: "01-03-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: IconAssets.iconsFigmaFile,
    title: "Figma File",
    date: "27-02-2021",
    size: "19.0mb",
  ),
  RecentFile(
    icon: IconAssets.iconsDocFile,
    title: "Document",
    date: "23-02-2021",
    size: "32.5mb",
  ),
  RecentFile(
    icon: IconAssets.iconsSoundFile,
    title: "Sound File",
    date: "21-02-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: IconAssets.iconsMediaFile,
    title: "Media File",
    date: "23-02-2021",
    size: "2.5gb",
  ),
  RecentFile(
    icon: IconAssets.iconsPdfFile,
    title: "Sales PDF",
    date: "25-02-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: IconAssets.iconsExcelFile,
    title: "Excel File",
    date: "25-02-2021",
    size: "34.5mb",
  ),
];
