import 'package:ecommerce_app/presentation/screens/errors/errors_page.dart';
import 'package:ecommerce_app/presentation/screens/favorites/favorites_page.dart';
import 'package:ecommerce_app/presentation/screens/home/home_page.dart';
import 'package:ecommerce_app/presentation/screens/home/widgets/home_app_bar.dart';
import 'package:ecommerce_app/presentation/screens/search/search_page.dart';
import 'package:ecommerce_app/presentation/screens/settings/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar.appBar(),
      body: bottomNavIndex == 0
          ? HomePage()
          : bottomNavIndex == 1
              ? SearchPage()
              : bottomNavIndex == 2
                  ? FavoritesPage()
                  : bottomNavIndex == 3
                      ? SettingsPage()
                      : ErrorsPage(),
      bottomNavigationBar: SnakeNavigationBar.color(
        behaviour: SnakeBarBehaviour.pinned,
        snakeShape: SnakeShape.circle,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
        padding: EdgeInsets.all(5.w),

        ///configuration for SnakeNavigationBar.color
        snakeViewColor: Colors.blue,
        selectedItemColor:
            SnakeShape.circle == SnakeShape.indicator ? Colors.blue : null,
        unselectedItemColor: Colors.blueGrey,

        ///configuration for SnakeNavigationBar.gradient
        //snakeViewGradient: selectedGradient,
        //selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
        //unselectedItemGradient: unselectedGradient,

        showUnselectedLabels: false,
        showSelectedLabels: false,

        currentIndex: bottomNavIndex,
        onTap: (index) => setState(() => bottomNavIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken), label: 'favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'settings')
        ],
      ),
    );
  }
}
