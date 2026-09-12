
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomTextStyle {
  CustomTextStyle._();

  static TextStyle headingStyle = TextStyle(

    fontFamily:'Janna LT',
    fontWeight: FontWeight.w700,
    fontSize: 24,
    color: AppColors.goldColor,
    height: 1.2,
    letterSpacing: 0,
  );
  static TextStyle paragraphStyle = TextStyle(

    fontFamily:'Janna LT',
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: AppColors.goldColor,
    height: 1,
    letterSpacing: 0,
  );

}