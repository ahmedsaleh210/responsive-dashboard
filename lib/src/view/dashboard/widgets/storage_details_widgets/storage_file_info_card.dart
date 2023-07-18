import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiv_ui_example/src/models/storage_file_model.dart';
import 'package:responsiv_ui_example/src/utils/extension.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/constants.dart';

class StorageFileInfoCard extends StatelessWidget {
  final StorageFileModel _fileInfoModel;
  const StorageFileInfoCard(
    this._fileInfoModel, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          const EdgeInsets.symmetric(vertical: AppConstants.defaultPadding / 2),
      padding: const EdgeInsets.all(AppConstants.defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryColor.withOpacity(0.5)),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: [
          SizedBox.square(
            dimension: 25,
            child: SvgPicture.asset(
              _fileInfoModel.icon,
            ),
          ),
          const SizedBox(width: AppConstants.defaultPadding),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _fileInfoModel.title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: context.resizeHelper(
                          mobile: 7.sp, tablet: 6.sp, desktop: 5.sp)),
                ),
                Text(
                  "${_fileInfoModel.counter}",
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Text(
            _fileInfoModel.size,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
