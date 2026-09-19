import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../../../core/constants/app_assets.dart';
import '../../../../../core/constants/app_colors.dart';

class SebhaWidget extends StatefulWidget {
  const SebhaWidget({super.key, required this.currnetCounter});

  final double currnetCounter;

  @override
  State<SebhaWidget> createState() => _SebhaWidgetState();
}

class _SebhaWidgetState extends State<SebhaWidget> {
  static const int _beadsCount = 30;

  @override
  Widget build(BuildContext context) {
    final double rotation =
        (widget.currnetCounter % _beadsCount) * (2 * math.pi / _beadsCount);
    return SizedBox(
      width: 320,
      height: 320,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Transform.rotate(
            angle: rotation,
            child: Stack(
              alignment: Alignment.center,
              children: [
                ...List.generate(_beadsCount, (i) {
                  final angle = (i * 2 * math.pi / _beadsCount) - (math.pi / 2);
                  final x = 150 * math.cos(angle);
                  final y = 150 * math.sin(angle);
                  return Transform.translate(
                    offset: Offset(x, y),
                    child: Container(
                      width:i == 1 ? 140 : 40,
                      height: i == 1 ? 140 : 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: i == 1
                              ? AssetImage(AppAssets.markGroupImg,)
                              : AssetImage(AppAssets.vectorImg),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
          Positioned(
            child: RichText(
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'سبحان الله\n',
                    style: TextStyle(
                      fontSize: 36,
                      color: AppColors.whiteColor,
                      fontFamily: 'Janna LT',
                    ),
                  ),
                  TextSpan(
                    text: widget.currnetCounter.toStringAsFixed(0),
                    style: TextStyle(
                      fontSize: 36,
                      color: AppColors.whiteColor,
                      fontFamily: 'Janna LT',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
