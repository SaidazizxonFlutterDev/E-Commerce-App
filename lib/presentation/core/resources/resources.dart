// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

String IMAGE_PATH = "assets/images";
String ICON_PATH = "assets/icons";

class ImageAsset {}

class IconAsset {
  static String bell = '$ICON_PATH/bell.svg';
  static String shopping_cart = "$ICON_PATH/shopping-cart.svg";
}

class SettingsResources{
  static List<IconData> icons = [
    Icons.edit,
    Icons.history,
    Icons.location_on,
    Icons.chat
  ];
  static List<String> labels = ["Edit Profile", "Orders", "Delivery Address", "Help"];
  static List<String> routeNames = [
    '/edit_profile',
    '/orders',
    '/delivery_address',
    '/help'
  ];
}
