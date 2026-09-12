import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_c20/core/theme/custom_text_style.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';

class HadethWidget extends StatelessWidget {
  const HadethWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 3,
        options: CarouselOptions(
          viewportFraction: .7,       // shows edges of prev/next
          enlargeCenterPage: true,     // active card bigger
          enableInfiniteScroll: true,
          autoPlay: false,
          height: 570.h,
        ),
      itemBuilder: (context, index ,realIndex) {
        return Stack(
          children: [
            Container(
              height: 570.h,
              width: 315.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.goldColor,
                image: DecorationImage(
                  image: AssetImage(AppAssets.hadithCardBgImg),
                  fit: BoxFit.contain,
                  opacity: .8,
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Image.asset(
                AppAssets.leftCornerImg,
                width: 100,
                height: 100,
                color: AppColors.blackColor,
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Image.asset(
                AppAssets.rightCornerImg,
                width: 100,
                height: 100,
                color: AppColors.blackColor,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Image.asset(AppAssets.mosque2Img),
            ),
            Positioned(
              top: 40.h,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.w),
                child: RichText(
                  textAlign: .center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'الحد يث الأول \n \n',
                        style: CustomTextStyle.headingStyle.copyWith(
                          color: AppColors.blackColor,
                          fontSize: 24.sp,
                        ),
                      ),
                      TextSpan(
                        text:
                        ''' عن أمـيـر المؤمنـين أبي حـفص عمر بن الخطاب رضي الله عنه ، قال : سمعت رسول الله صلى الله عـليه وسلم يـقـول : ( إنـما الأعـمـال بالنيات وإنـمـا لكـل امـرئ ما نـوى . فمن كـانت هجرته إلى الله ورسولـه فهجرتـه إلى الله ورسـوله ومن كانت هجرته لـدنيا يصـيبها أو امرأة ينكحها فهجرته إلى ما هاجر إليه ).
رواه إمام المحد ثين أبـو عـبـد الله محمد بن إسماعـيل بن ابراهـيـم بن المغـيره بن بـرد زبه البخاري الجعـفي،[رقم:1] وابـو الحسـيـن مسلم بن الحجاج بن مـسلم القـشـيري الـنيسـابـوري [رقم :1907] رضي الله عنهما في صحيحيهما اللذين هما أصح الكتب المصنفه. 
''',
                        style: CustomTextStyle.paragraphStyle.copyWith(
                          color: AppColors.blackColor,
                          fontSize: 16.sp,
                          height: 1.8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      }
    );
  }
}
