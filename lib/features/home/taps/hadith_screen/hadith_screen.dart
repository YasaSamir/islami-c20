import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/widgets/custom_logo_islami.dart';
import 'custom_screen_background.dart';
import 'hadith_widget.dart';

class HadithScreen extends StatelessWidget {
  const HadithScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CustomScreenBackground(),
          Column(
              children: [
                SizedBox(height: 30.h),
                CustomLogoIslami(),
                HadethWidget()
              ],
          ),
        ],
      ),
    );
  }
}
