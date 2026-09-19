import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_c20/config/widgets/custom_logo_islami.dart';
import 'package:islami_c20/features/home/taps/sebha_screen/widgets/sebha_widget.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/theme/custom_text_style.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  double counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.sebhaBgImg),
            fit: BoxFit.cover,
            opacity: .5,
            colorFilter: ColorFilter.mode(
              Colors.black.withValues(alpha: .7),
              BlendMode.darken,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: .center,
          children: [
            SizedBox(height: 40.w),
            CustomLogoIslami(),
            Text(
              'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
              style: CustomTextStyle.headingStyle.copyWith(
                fontSize: 36.sp,
                color: AppColors.whiteColor,
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    counter++;
                    if (counter >= 30) {
                      counter = 0;
                    }
                  });
                },
                child: SebhaWidget(currnetCounter: counter),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
