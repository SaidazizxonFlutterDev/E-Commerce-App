import 'package:ecommerce_app/presentation/screens/home/home_page.dart';
import 'package:flutter/material.dart';

class MyRoutes {
  static Route? ongenerateRoute(RouteSettings s) {
    // ignore: unused_local_variable
    var args = s.arguments;
    switch (s.name) {
      case '/home_page':
        return MaterialPageRoute(builder: (ctx) => const HomePage());
      default:
    }
    return null;
  }
}
