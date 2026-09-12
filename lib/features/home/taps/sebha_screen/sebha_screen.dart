import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';

class SebhaScreen extends StatelessWidget {
  const SebhaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.sebhaBgImg),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
