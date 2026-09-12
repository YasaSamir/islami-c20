import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_c20/features/home/screens/quran_screen/recent_sura_list_view.dart';
import '../../../../../config/widgets/custom_logo_islami.dart';
import '../../../../../core/constants/app_assets.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/custom_text_style.dart';
import 'custom_text_field.dart';
import 'sura_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.quranBgImg),
            fit: BoxFit.cover,
            opacity: .2,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            spacing: 10.h,
            crossAxisAlignment: .start,
            children: [
              CustomLogoIslami(),
              CustomTextField(),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Most Recently',
                  style: CustomTextStyle.paragraphStyle.copyWith(
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/sura_details_screen');
                },
                child: RecentSuraListView(),
              ),
              Text(
                'Suras List',
                style: CustomTextStyle.paragraphStyle.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
              Expanded(child: const SuraListView()),
            ],
          ),
        ),
      ),
    );
  }
}
