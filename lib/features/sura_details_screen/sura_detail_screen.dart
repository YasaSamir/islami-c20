import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constants/app_assets.dart';
import '../../core/constants/app_colors.dart';
import '../../core/theme/custom_text_style.dart';
import '../home/taps/quran_screen/model/sura_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    final sura = ModalRoute.of(context)!.settings.arguments as SuraModel;
    

    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(sura.englishName, style: CustomTextStyle.headingStyle),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: AppColors.goldColor),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.quranBgImg),
            fit: BoxFit.cover,
            opacity: 0.1,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(AppAssets.leftCornerImg ,width: 90.w,),
                  Text(
                    sura.arabicName,
                    style: CustomTextStyle.headingStyle.copyWith(
                      fontSize: 32,
                      color: AppColors.goldColor,
                    ),
                  ),
                  Image.asset(AppAssets.rightCornerImg, width: 90.w),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          child: FutureBuilder(future: readSura(sura.number), builder: (context, snapshot) {
                            if (snapshot.connectionState == ConnectionState.waiting) {
                              return CircularProgressIndicator(color: AppColors.goldColor);
                            } else if (snapshot.hasError) {
                              return Text('Error: ${snapshot.error}');
                            } else {
                              return Text(
                                snapshot.data!,
                                textAlign: TextAlign.center,
                                style: CustomTextStyle.paragraphStyle.copyWith(
                                  color: AppColors.goldColor,
                                  fontSize: 22,
                                  height: 1.8,
                                ),
                              );
                            }
                          }),
                        ),
                      )
                  ),
                ],
              ),
            ),
            Image.asset(AppAssets.mosque2Img,width: double.infinity,),
          ],
        ),
      ),
    );
  }

  String suraContent = '';

  Future<String> readSura(int sureNumber) async {
    suraContent = await rootBundle.loadString('assets/Suras/$sureNumber.txt');
    suraContent = suraContent.replaceAll('\n', ' ');

    return suraContent;
  }
}
