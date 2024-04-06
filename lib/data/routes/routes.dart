import 'package:ecommerce_app/presentation/screens/bottomnavbar/navigation_bar.dart';
import 'package:ecommerce_app/presentation/screens/favorites/favorites_page.dart';
import 'package:ecommerce_app/presentation/screens/home/home_page.dart';
import 'package:ecommerce_app/presentation/screens/home/homedetail/home_detail_page.dart';
import 'package:ecommerce_app/presentation/screens/search/search_page.dart';
import 'package:ecommerce_app/presentation/screens/settings/delivery_address/deliver_address_page.dart';
import 'package:ecommerce_app/presentation/screens/settings/editprofile/edit_profile_page.dart';
import 'package:ecommerce_app/presentation/screens/settings/help/help_page.dart';
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

      case '/search_page':
        return MaterialPageRoute(builder: (context) => const SearchPage());
      case '/favorites_page':
        return MaterialPageRoute(builder: (context) => const FavoritesPage());
      case '/settings_page':
        return MaterialPageRoute(builder: (context) => const SettingsPage());
      case '/homedetail':
        return MaterialPageRoute(builder: (context) => const HomeDetailPage());
      case '/edit_profile':
        return MaterialPageRoute(builder: (context) => const EditProfilePage());
      case '/delivery_address':
        return MaterialPageRoute(builder: (context) => const DeliveryAddressPage());
      case '/help':
        return MaterialPageRoute(builder: (context) => const HelpPage());
      default:
    }
    return null;
  }
}
