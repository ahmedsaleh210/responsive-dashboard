import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiv_ui_example/src/utils/extension.dart';

import '../../../../models/cloud_storage_model.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/constants.dart';

class CloudStorageCardList extends StatelessWidget {
  const CloudStorageCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              context.resizeHelper<int>(mobile: 2, tablet: 2, desktop: 4),
          crossAxisSpacing: AppConstants.defaultPadding,
          mainAxisSpacing:
              context.resizeHelper(mobile: 10, tablet: 30, desktop: 0),
          childAspectRatio: context.resizeHelper<double>(
              tinyMobile: 1,
              mobile: 1.3,
              minTablet: 1.6,
              tablet: 1.8,
              desktop: 1,
              largeDesktop: 1),
        ),
        itemBuilder: (context, index) =>
            CloudStorageCard(cloudStorageList[index]));
  }
}

class CloudStorageCard extends StatelessWidget {
  final CloudStorageModel _cloudStorageModel;
  const CloudStorageCard(this._cloudStorageModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(context.resizeHelper(
          mobile: AppConstants.defaultPadding.sp / 2,
          minTablet: AppConstants.defaultPadding.sp / 3,
          desktop: AppConstants.defaultPadding.sp / 6)),
      decoration: const BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: context.resizeHelper(
                    mobile: 30.w, tablet: 20.w, desktop: 10.w),
                width: context.resizeHelper(
                    mobile: 30.w, tablet: 20.w, desktop: 10.w),
                padding: const EdgeInsets.all(AppConstants.defaultPadding / 2),
                decoration: BoxDecoration(
                    color: _cloudStorageModel.color.withOpacity(0.1),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    )),
                child: SvgPicture.asset(
                  _cloudStorageModel.icon,
                ),
              ),
              IconButton(icon: const Icon(Icons.more_vert), onPressed: () {})
            ],
          ),
          Text(_cloudStorageModel.title,
              maxLines: 1,
              style: TextStyle(
                fontSize: context.resizeHelper(
                    mobile: 12.sp,
                    minTablet: 7.sp,
                    tablet: 5.sp,
                    desktop: 5.sp),
                overflow: TextOverflow.ellipsis,
              )),
          LinearProgressIndicator(
            value: _cloudStorageModel.percentage / 100,
            color: _cloudStorageModel.color,
            backgroundColor: _cloudStorageModel.color.withOpacity(0.1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("${_cloudStorageModel.filesNumber}",
                  style: context.theme.textTheme.bodySmall?.copyWith(
                    color: Colors.white70,
                    fontSize: context.resizeHelper(
                        mobile: 12.sp,
                        minTablet: 7.sp,
                        tablet: 5.sp,
                        desktop: 4.sp),
                  )),
              Text(
                "${_cloudStorageModel.size} GB",
                style: TextStyle(
                  fontSize: context.resizeHelper(
                      mobile: 12.sp,
                      minTablet: 7.sp,
                      tablet: 5.sp,
                      desktop: 4.sp),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
