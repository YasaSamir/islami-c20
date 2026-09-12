import 'package:flutter/material.dart';

import '../../../../../core/constants/app_assets.dart';
import '../../../../../core/theme/custom_text_style.dart';
class SuraListInfo extends StatelessWidget {
  // Add these variables to make the widget reusable
  final String suraNumber;
  final String suraEnName;
  final String suraArName;
  final String versesCount;

  const SuraListInfo({
    super.key,
    required this.suraNumber,
    required this.suraEnName,
    required this.suraArName,
    required this.versesCount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                AppAssets.starImg, // Change from hadithBgImg to your star asset
                width: 50,
                height: 50,
              ),
              Text(
                suraNumber,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          title: Text(
            suraEnName,
            style: CustomTextStyle.headingStyle.copyWith(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            '$versesCount Verses',
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
          trailing: Text(
            suraArName,
            style: CustomTextStyle.headingStyle.copyWith(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}