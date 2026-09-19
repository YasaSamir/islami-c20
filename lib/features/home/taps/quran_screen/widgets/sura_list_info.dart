import 'package:flutter/material.dart';
import 'package:islami_c20/features/home/taps/quran_screen/model/sura_model.dart';

import '../../../../../../core/constants/app_assets.dart';
import '../../../../../../core/theme/custom_text_style.dart';
class SuraListInfo extends StatelessWidget {
  const SuraListInfo({
    super.key, required this.suraModel,
  });
  final SuraModel suraModel;

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
                AppAssets.starImg,
                width: 50,
                height: 50,
              ),
              Text(
                suraModel.number.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          title: Text(
            suraModel.englishName,
            style: CustomTextStyle.headingStyle.copyWith(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            '${suraModel.verses} Verses',
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
          trailing: Text(
            suraModel.arabicName,
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