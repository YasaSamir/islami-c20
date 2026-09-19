import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_c20/core/constants/suras.dart';
import 'package:islami_c20/features/home/taps/quran_screen/model/sura_model.dart';
import 'package:islami_c20/features/home/taps/quran_screen/widgets/recent_sura_list_view.dart';
import 'package:islami_c20/features/home/taps/quran_screen/widgets/sura_list_info.dart';
import '../../../../../config/widgets/custom_logo_islami.dart';
import '../../../../../core/constants/app_assets.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/custom_text_style.dart';
import '../../../../core/routes/routes.dart';
import 'widgets/custom_text_field.dart';

class QuranScreen extends StatefulWidget {
  QuranScreen({super.key});

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  List<SuraModel> filterSura = SurasData.suras;
  late List<SuraModel> recentSuras = SurasData.recentSuras;

  void searchSura(String searchedSura) {
    setState(() {
      filterSura = SurasData.suras
          .where(
            (sura) =>
                sura.englishName.contains(searchedSura) ||
                sura.arabicName.contains(searchedSura),
          )
          .toList();
      if (searchedSura.isEmpty) {
        filterSura = SurasData.suras;
      }
    });

  }

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.quranBgImg),
            fit: BoxFit.cover,
            opacity: .2,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            spacing: 10.h,
            crossAxisAlignment: .start,
            children: [
              CustomLogoIslami(),
              CustomTextField( onChanged: searchSura,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Most Recently',
                  style: CustomTextStyle.paragraphStyle.copyWith(
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
              RecentSuraListView(
                suraModels: recentSuras,
              ),
              Text(
                'Suras List',
                style: CustomTextStyle.paragraphStyle.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.all(0),
                    shrinkWrap: true,
                    itemCount: filterSura.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            AppRoutes.suraDetailScreen, // The route name
                            arguments: filterSura[index],
                          );
                        },
                        child: SuraListInfo(suraModel: filterSura[index]),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider(
                        color: Colors.white,
                        thickness: 1,
                        endIndent: 40.w,
                        indent: 40.w,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
