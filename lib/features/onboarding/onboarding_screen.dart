import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:islami_c20/features/onboarding/widgets/page_items.dart';
import '../../config/widgets/custom_logo_islami.dart';
import '../../core/constants/app_assets.dart';
import '../../core/constants/app_colors.dart';
import '../../core/routes/routes.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  final pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Column(
        children: [
          const CustomLogoIslami(),
          Expanded(
            flex: 5,
            child: PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              children: [
                PageItems(imagePath: AppAssets.intro1Img, title: 'Welcome to Islamii'),
                PageItems(imagePath: AppAssets.intro2Img, title: 'Read Al-Quran', description: 'We Are Very Excited To Have You In Our Community'),
                PageItems(imagePath: AppAssets.intro3Img, title: 'Reading the Quran', description: 'Read, and your Lord is the Most Generous'),
                PageItems(imagePath: AppAssets.intro4Img, title: 'Bearish', description: 'Praise the name of your Lord, the Most High'),
                PageItems(imagePath: AppAssets.intro5Img, title: 'Holy Quran Radio', description: 'You can listen to the Holy Quran Radio through the application for free and easily'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: currentIndex == 0 ? null : () => pageController.previousPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn),
                  child: Text('Back', style: TextStyle(color: currentIndex == 0 ? Colors.transparent : AppColors.goldColor, fontSize: 18)),
                ),
                SmoothPageIndicator(
                  controller: pageController,
                  count: 5,
                  effect: WormEffect(activeDotColor: AppColors.goldColor, dotColor: AppColors.whiteColor, dotHeight: 10, dotWidth: 10),
                ),
                TextButton(
                  onPressed: () {
                    if (currentIndex == 4) {
                      Navigator.pushNamedAndRemoveUntil(context, AppRoutes.homeScreen, (route) => false);
                    } else {
                      pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
                    }
                  },
                  child: Text(currentIndex == 4 ? 'Finish' : 'Next', style: TextStyle(color: AppColors.goldColor, fontSize: 18)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}