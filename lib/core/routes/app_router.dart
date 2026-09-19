import 'package:flutter/material.dart';
import '../../features/home/home_screen.dart';
import '../../features/home/taps/quran_screen/quran_screen.dart';
import '../../features/sura_details_screen/sura_detail_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';
import 'routes.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.onboardingScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => Onboarding(),
        );
      case AppRoutes.quranScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => QuranScreen(),
        );
      case AppRoutes.homeScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const HomeScreen(),
        );
      case AppRoutes.suraDetailScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => SuraDetailsScreen(),
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) =>  Onboarding(),
        );
    }
  }
}