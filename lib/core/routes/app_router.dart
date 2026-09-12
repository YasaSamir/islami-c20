import 'package:flutter/material.dart';
import 'package:islamii/config/navigation/routes.dart';
import 'package:islamii/features/home/presentation/sura_detail_screen.dart';
import '../../features/home/presentation/home_screen.dart';
import '../../features/home/presentation/main_screen.dart';
import '../../features/onboarding/presentation/onboarding_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.onboardingScreen:
        return MaterialPageRoute(builder: (context) => Onboarding());
      case AppRoutes.homeScreen:
      // Replace this with your actual Login or Home Screen widget
        return MaterialPageRoute(builder: (context) =>HomeScreen());
        case AppRoutes.mainScreen:
      // Replace this with your actual Login or Home Screen widget
        return MaterialPageRoute(builder: (context) =>MainScreen());
        case AppRoutes.suraDetailScreen:
      // Replace this with your actual Login or Home Screen widget
        return MaterialPageRoute(builder: (context) =>SuraDetailsScreen());
      default:
        return MaterialPageRoute(builder: (context) => Onboarding());
    }
  }
}