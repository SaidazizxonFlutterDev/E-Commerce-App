import 'package:ecommerce_app/presentation/core/constants/color_const.dart';
import 'package:ecommerce_app/presentation/screens/cart/cart_page.dart';
import 'package:ecommerce_app/presentation/screens/errors/errors_page.dart';
import 'package:ecommerce_app/presentation/screens/favorites/favorites_page.dart';
import 'package:ecommerce_app/presentation/screens/home/home_page.dart';
import 'package:ecommerce_app/presentation/screens/home/widgets/home_app_bar.dart';
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
  List<String> actionTexts = [
    "Home",
    "Shopping bag",
    "Favorites",
    "Settings"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar.appBar(actionText: actionTexts[bottomNavIndex]),
      body: bottomNavIndex == 0
          ? const HomePage()
          : bottomNavIndex == 1
              ? const CartPage()
              : bottomNavIndex == 2
                  ? const FavoritesPage()
                  : bottomNavIndex == 3
                      ? const SettingsPage()
                      : const ErrorsPage(),
      bottomNavigationBar: SnakeNavigationBar.color(
        behaviour: SnakeBarBehaviour.pinned,
        snakeShape: SnakeShape.circle,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
        padding: EdgeInsets.all(5.w),
        snakeViewColor: ColorConst.primaryBlue,
        selectedItemColor: SnakeShape.circle == SnakeShape.indicator
            ? ColorConst.primaryBlue
            : null,
        unselectedItemColor: ColorConst.primaryBlue,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: bottomNavIndex,
        onTap: (index) => setState(() => bottomNavIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'settings')
        ],
      ),
    );
  }
}
