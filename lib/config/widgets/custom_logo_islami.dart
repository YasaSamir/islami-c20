import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_assets.dart';
import '../../core/constants/app_colors.dart';

class CustomLogoIslami extends StatelessWidget {
  const CustomLogoIslami({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.h),
      child:Center(
        child: Container(
          width: 300.w,
          height: 166.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            image: DecorationImage(
              image: AssetImage(AppAssets.mosqueImg),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.center, // or Alignment.centerRight, Alignment.centerLeft
            child: Image.asset(
              AppAssets.islamiImg,
              color: AppColors.goldColor,
              width: 170.w,
            ),
          ),
        ),
      )
    );
  }
}
