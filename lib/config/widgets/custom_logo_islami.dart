import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';
import '../../core/constants/app_colors.dart';

class CustomLogoIslami extends StatelessWidget {
  const CustomLogoIslami({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Image.asset(AppAssets.mosqueImg, width: 350),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 130),
            child: Image.asset(
              AppAssets.islamiImg,
              color: AppColors.goldColor,
              width: 166,

            ),
          ),
        ),
      ],
    );
  }
}
