import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';
import '../../core/constants/app_colors.dart';
import '../../core/theme/custom_text_style.dart';

class SuraDetailsScreen extends StatelessWidget {

  const SuraDetailsScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Al-Faatiha',
          style: CustomTextStyle.headingStyle,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: AppColors.goldColor),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            AppAssets.quranBgImg,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
            opacity: const AlwaysStoppedAnimation(.1),
          ),
          Column(
            children: [
              const SizedBox(height: 20),
              Text(
                'Al-Faatiha',
                style: CustomTextStyle.headingStyle.copyWith(
                  fontSize: 32,
                  color: AppColors.goldColor,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Text(
                  '''
                [1] بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ [2] الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ [3] الرَّحْمَنِ الرَّحِيمِ [4] مَالِكِ يَوْمِ الدِّينِ [5] إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ [6] اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ [7] صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّين
                ''',
                textAlign: TextAlign.center,
                style: CustomTextStyle.paragraphStyle.copyWith(
                  color: AppColors.goldColor,
                  fontSize: 22,
                  height: 1.8,
                ),

                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}