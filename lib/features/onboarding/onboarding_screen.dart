import 'package:flutter/material.dart';
import 'package:islami_c20/features/onboarding/presentation/widgets/page_items.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../config/widgets/custom_logo_islami.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/routes/routes.dart';

class Onboarding extends StatelessWidget {
  Onboarding({super.key});

  final controller = PageController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Column(
        children: [
          CustomLogoIslami(),
          Expanded(
            flex: 5,
            child: PageView(
              controller: controller,
              children: [
                PageItems(
                  imagePath: AppAssets.intro1Img,
                  title: 'Welcome to Islamii',
                ),
                PageItems(
                  imagePath: AppAssets.intro2Img,
                  title: 'Read Al-Quran',
                  description:
                      'We Are Very Excited To Have You In Our Community',
                ),
                PageItems(
                  imagePath: AppAssets.intro3Img,
                  title: 'Reading the Quran',
                  description: 'Read, and your Lord is the Most Generous',
                ),
                PageItems(
                  imagePath: AppAssets.intro4Img,
                  title: 'Bearish',
                  description: 'Praise the name of your Lord, the Most High',
                ),
                PageItems(
                  imagePath: AppAssets.intro5Img,
                  title: 'Holy Quran Radio',
                  description:
                      'You can listen to the Holy Quran Radio through the application for free and easily',
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        child: Text(
                          'Back',
                          style: TextStyle(
                            color: AppColors.goldColor,
                            fontSize: 18,
                          ),
                        ),
                        onPressed: () {
                          controller.previousPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                      ),
                      SmoothPageIndicator(controller: controller, count: 5 ,
                        effect: WormEffect(
                          dotHeight: 10,
                          dotWidth: 10,
                          activeDotColor: AppColors.goldColor,
                          dotColor: AppColors.whiteColor,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Next',
                          style: TextStyle(
                            color: AppColors.goldColor,
                            fontSize: 18,
                          ),
                        ),
                        onPressed: () {
                          controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                          if (controller.page == 4) {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              AppRoutes.mainScreen,
                              (route) => false,
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
