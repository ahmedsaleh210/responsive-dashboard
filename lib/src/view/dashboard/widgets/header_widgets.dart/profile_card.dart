import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsiv_ui_example/src/utils/extension.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/img_assets.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
        decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            border: Border.all(color: Colors.white10),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Image.asset(
              ImgAssets.imagesProfilePic,
              width: 30,
              height: 30,
            ),
            if (!context.isMobile)
              Text("Admin", style: context.theme.textTheme.bodyMedium),
            const Icon(Icons.keyboard_arrow_down)
          ],
        ));
  }
}
