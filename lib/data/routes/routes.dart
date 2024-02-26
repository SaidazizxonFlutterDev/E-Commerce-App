
import 'package:ecommerce_app/presentation/screens/bottomnavbar/navigation_bar.dart';
import 'package:ecommerce_app/presentation/screens/favorites/favorites_page.dart';
import 'package:ecommerce_app/presentation/screens/home/home_page.dart';
import 'package:ecommerce_app/presentation/screens/search/search_page.dart';
import 'package:ecommerce_app/presentation/screens/settings/settings_page.dart';
import 'package:flutter/material.dart';

class MyRoutes {
  static Route? ongenerateRoute(RouteSettings s) {
    // ignore: unused_local_variable
    var args = s.arguments;
    switch (s.name) {
      case '/home_page':
        return MaterialPageRoute(builder: (ctx) => const HomePage());

      case '/bottomnav':
        return MaterialPageRoute(builder: (context) => const BottomNavPage());

      case 'search_page':
        return MaterialPageRoute(builder: (context) => const SearchPage());
      case 'favorites_page':
        return MaterialPageRoute(builder: (context) => const FavoritesPage());
      case 'settings_page':
        return MaterialPageRoute(builder: (context) => const SettingsPage());
      default:
    }
    return null;
  }
}
