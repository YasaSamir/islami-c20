import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_c20/core/theme/custom_text_style.dart';
import '../../../../../core/constants/app_assets.dart';
import '../../../../../core/constants/app_colors.dart';

class HadithWidget extends StatelessWidget {
  HadithWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 50,
      options: CarouselOptions(
        viewportFraction: .7,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        autoPlay: false,
        height: 570.h,
      ),
      itemBuilder: (context, index, realIndex) {
        return FutureBuilder(
          future: loadHadith(index),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return CircularProgressIndicator();
            } else {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.goldColor,
                  image: DecorationImage(
                    image: AssetImage(AppAssets.hadithCardBgImg),
                    fit: BoxFit.contain,
                    opacity: .8,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            AppAssets.leftCornerImg,
                            width: 90,
                            height: 100,
                            color: AppColors.blackColor,
                          ),
                          Expanded(
                            child: Text(
                              title,
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 24.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Image.asset(
                            AppAssets.rightCornerImg,
                            width: 90,
                            height: 100,
                            color: AppColors.blackColor,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Text(
                          content,
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                          style: CustomTextStyle.paragraphStyle.copyWith(
                            height: 1.5,
                            color: AppColors.blackColor,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                    Image.asset(AppAssets.mosque2Img),
                  ],
                ),
              );
            }
          },
        );
      },
    );
  }

  String content = '';
  String title = '';

  loadHadith(int index) async {
    String fullText = await rootBundle.loadString('assets/Hadeeth/h$index.txt');
    List<String> lines = fullText.trim().split('\n');
    title = lines[0];
    lines.removeAt(0);
    content = lines.join('\n');
  }
}
