import 'package:flutter/material.dart';

import '../../../../../../core/constants/app_assets.dart';

class CustomScreenBackground extends StatelessWidget {
  const CustomScreenBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF3F3F3F),
            Color(0xFF0D0D0D),
            Color(0xFF000000),
          ],
        ),
        image: DecorationImage(
          image: AssetImage(AppAssets.hadithBgImg),
          fit: BoxFit.cover,
          opacity: .14,
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black,
                ],
                stops: [0.0, 0.2, 1.0],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
