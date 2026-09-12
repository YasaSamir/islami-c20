import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami_c20/features/home/presentation/screens/hadith_screen/hadith_screen.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_colors.dart';
import 'screens/quran_screen/quran_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const HadithScreen(),
    const Center(
      child: Text(
        'Sebha Page',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    ),
    const Center(
      child: Text(
        'Radio Page',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    ),
    const Center(
      child: Text(
        'Time Page',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.goldColor,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: AppColors.whiteColor,
        unselectedItemColor: AppColors.blackColor,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
          fontFamily: 'Janna LT',
        ),
        items: [
          _buildNavItem(AppAssets.quranIconSvg, 'Quran', 0, Icons.menu_book),
          _buildNavItem(
            AppAssets.hadithIconSvg,
            'Hadith',
            1,
            Icons.menu_book_outlined,
          ),
          _buildNavItem(
            AppAssets.sebhaIconSvg,
            'Sebha',
            2,
            Icons.brightness_low_outlined,
          ),
          _buildNavItem(AppAssets.radioIconSvg, 'Radio', 3, Icons.radio),
          _buildNavItem(AppAssets.timeIconSvg, 'Time', 4, Icons.assessment),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(
    String iconPath,
    String label,
    int index,
    IconData fallback,
  ) {
    bool isSelected = _selectedIndex == index;
    Widget iconWidget = SvgPicture.asset(
      iconPath,
      width: 24.w,
      height: 24.h,
      colorFilter: ColorFilter.mode(
        isSelected ? AppColors.whiteColor : AppColors.blackColor,
        BlendMode.srcIn,
      ),
      placeholderBuilder: (context) => Icon(
        fallback,
        color: isSelected ? AppColors.whiteColor : AppColors.blackColor,
      ),
    );

    return BottomNavigationBarItem(
      icon: iconWidget,
      activeIcon: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: const Color(0xFF212121).withOpacity(0.6),
          // Dark pill background
          borderRadius: BorderRadius.circular(20),
        ),
        child: iconWidget,
      ),
      label: label,
    );
  }
}
