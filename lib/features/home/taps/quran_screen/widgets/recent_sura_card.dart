import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_c20/features/home/taps/quran_screen/model/sura_model.dart';

import '../../../../../../core/constants/app_assets.dart';
import '../../../../../../core/constants/app_colors.dart';

class RecentSuraCard extends StatelessWidget {
  const RecentSuraCard({super.key, required this.suraModel,});

  final SuraModel suraModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.w,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.goldColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                suraModel.englishName,
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                suraModel.arabicName,
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${suraModel.verses} Verses",
                style: TextStyle(color: AppColors.blackColor, fontSize: 14),
              ),
            ],
          ),
          Expanded(child: Image.asset(AppAssets.quranSuraImg, )),
        ],
      ),
    );
  }
}
