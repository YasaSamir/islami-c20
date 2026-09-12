import 'package:flutter/material.dart';
import 'package:islami_c20/features/home/taps/quran_screen/recent_sura_card.dart';

import '../../../../../core/constants/app_assets.dart';

class RecentSuraListView extends StatelessWidget {
  const RecentSuraListView ({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 150, // Match the height shown in your image (150)
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5, // Example count
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          return const RecentSuraCard(
            englishTitle: 'English Title',
            arabicTitle: 'Arabic Title',
            imageUrl: AppAssets.quranSuraImg,
            versesCount: 100,
          );
        },
      ),
    );
  }
}
