import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami_c20/features/home/taps/quran_screen/model/sura_model.dart';

import '../../../../../../core/constants/app_assets.dart';
import '../../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/suras.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.onChanged});
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: "Surah name...",
        hintStyle: const TextStyle(color: Colors.white70),
        prefixIcon:Padding(
          padding: const EdgeInsets.fromLTRB(16,8, 8, 10),
          child: SvgPicture.asset(AppAssets.quranIconSvg,colorFilter: ColorFilter.mode(AppColors.goldColor, BlendMode.srcIn),),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.goldColor,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.goldColor,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.goldColor,
            width: 2,
          ),
        ),
      ),
      style: TextStyle(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
