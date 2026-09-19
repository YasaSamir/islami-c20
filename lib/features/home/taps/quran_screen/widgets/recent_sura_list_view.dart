import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_c20/core/constants/app_colors.dart';
import 'package:islami_c20/core/theme/custom_text_style.dart';
import 'package:islami_c20/features/home/taps/quran_screen/widgets/recent_sura_card.dart';
import '../model/sura_model.dart';

class RecentSuraListView extends StatelessWidget {
  const RecentSuraListView({super.key, required this.suraModels});

  final List<SuraModel> suraModels;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: suraModels.isEmpty?1:suraModels.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          return suraModels.isEmpty
              ? Center(
                  child: Text(
                    "No recent suras",
                    style: CustomTextStyle.headingStyle.copyWith(
                      color: AppColors.whiteColor,
                      fontSize: 22,
                    ),
                  ),
                )
              : RecentSuraCard(suraModel: suraModels[index]);
        },
      ),
    );
  }
}
