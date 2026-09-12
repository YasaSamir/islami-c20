import 'package:flutter/material.dart';

import '../../../../core/theme/custom_text_style.dart';

class PageItems extends StatelessWidget {
  const PageItems({
    super.key,
    required this.imagePath,
    this.title,
    this.description,
  });

  final String imagePath;
  final String? title;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain, // This prevents the 289px overflow!
          ),
        ),
        SizedBox(height: 20),
        Text(
          textAlign: TextAlign.center,
          title ?? '',
          style: CustomTextStyle.headingStyle,
        ),
        SizedBox(height: 20),
        Text(
          textAlign: TextAlign.center,
          description ?? '',
          style: CustomTextStyle.headingStyle.copyWith(fontSize: 20),
        ),
      ],
    );
    ;
  }
}
