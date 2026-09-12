import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/constants/app_assets.dart';
import '../../../../../core/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});


  @override
  Widget build(BuildContext context) {
    return TextField(

      decoration: InputDecoration(
        hintText: "Surah name...",
        hintStyle: const TextStyle(color: Colors.white70),
        prefixIcon:Padding(
          padding: const EdgeInsets.fromLTRB(16,8, 8, 10),
          child: SvgPicture.asset(AppAssets.quranIconSvg),
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
            color: AppColors.goldColor, // Keep it gold when focused
            width: 2, // Make it slightly thicker when active
          ),
        ),
      ),
      style: TextStyle(
        backgroundColor: Colors.transparent,


      ),

    );
  }
}
