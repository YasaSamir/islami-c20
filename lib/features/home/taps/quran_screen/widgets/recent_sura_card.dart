import 'package:flutter/material.dart';

import '../../../../../core/constants/app_assets.dart';
import '../../../../../core/constants/app_colors.dart';

class RecentSuraCard extends StatelessWidget {
  const RecentSuraCard({
    super.key,
    required this.englishTitle,
    required this.arabicTitle,
    required this.imageUrl,
    required this.versesCount,
    this.textColor = Colors.black,
  });

  final String englishTitle;
  final String arabicTitle;
  final String imageUrl;
  final int versesCount;
  final Color textColor ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280, // Approximate width from your image
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
                englishTitle,
                style: TextStyle(
                  color: textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                arabicTitle,
                style: TextStyle(
                  color: textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "$versesCount Verses",
                style: TextStyle(color: textColor, fontSize: 14),
              ),
            ],
          ),
          Expanded(child: Image.asset(imageUrl)), // The Quran/Lantern image
        ],
      ),
    );
  }
}
