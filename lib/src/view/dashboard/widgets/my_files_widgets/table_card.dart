import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsiv_ui_example/src/utils/colors.dart';
import 'package:responsiv_ui_example/src/utils/extension.dart';

import '../../../../models/recent_files.dart';
import '../../../../utils/constants.dart';

class TableCard extends StatelessWidget {
  const TableCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(vertical: AppConstants.defaultPadding),
      decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(
                start: AppConstants.defaultPadding),
            child:
                Text("Recent Files", style: context.theme.textTheme.bodyLarge),
          ),
          const SizedBox(height: AppConstants.defaultPadding),
          if (context.isTinyMobile) ...{
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(width: context.width, child: const TableItem()),
            )
          } else ...{
            const SizedBox(
              width: double.infinity,
              child: TableItem(),
            )
          },
        ],
      ),
    );
  }
}

class TableItem extends StatelessWidget {
  const TableItem({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
        columnSpacing: AppConstants.defaultPadding,
        horizontalMargin: context.resizeHelper(mobile: 12.w, tinyMobile: 8.w),
        columns: [
          DataColumn(
              label: Text(
            "File Name",
            style: TextStyle(
                fontSize: context.resizeHelper(
                    mobile: 12.sp, desktop: 4.sp, tinyMobile: 11.sp)),
          )),
          DataColumn(
              label: Text(
            "Date",
            style: TextStyle(
                fontSize: context.resizeHelper(
                    mobile: 12.sp,
                    tablet: 7.sp,
                    desktop: 4.sp,
                    tinyMobile: 11.sp)),
          )),
          DataColumn(
              label: Text(
            "Size",
            style: TextStyle(
                fontSize: context.resizeHelper(
                    mobile: 12.sp,
                    tablet: 7.sp,
                    desktop: 4.sp,
                    tinyMobile: 11.sp)),
          ))
        ],
        rows: List.generate(recentFilesList.length, (index) {
          return DataRow(onLongPress: () {}, cells: [
            DataCell(SvgPicture.asset(
              recentFilesList[index].icon,
              height: context.resizeHelper(
                  mobile: 25.h, minTablet: 25.h, tablet: 20.h, desktop: 30.h),
              width: context.resizeHelper(
                  mobile: 25.w, minTablet: 25.w, tablet: 20.w, desktop: 30.w),
            )),
            DataCell(Text(
              recentFilesList[index].title,
              style: TextStyle(
                  fontSize: context.resizeHelper(
                      mobile: 12.sp,
                      minTablet: 9.sp,
                      tablet: 7.sp,
                      desktop: 5.sp)),
            )),
            DataCell(Text(
              recentFilesList[index].date,
              style: TextStyle(
                  fontSize: context.resizeHelper(
                      mobile: 12.sp,
                      minTablet: 9.sp,
                      tablet: 7.sp,
                      desktop: 4.sp)),
            )),
          ]);
        }));
  }
}
