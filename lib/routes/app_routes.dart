import 'package:flutter/material.dart';
import 'package:rescue/screens/login_page_screen.dart';
import 'package:rescue/screens/login_page_three_screen.dart';
import 'package:rescue/screens/login_page_four_screen.dart';
import 'package:rescue/screens/login_page_one_screen.dart';
import 'package:rescue/screens/login_page_two_screen.dart';
import 'package:rescue/screens/android_large_one_screen.dart';
import 'package:rescue/screens/android_large_three_screen.dart';
import 'package:rescue/screens/android_large_four_screen.dart';
import 'package:rescue/screens/app_navigation_screen.dart';

class AppRoutes {
  static const String loginPageScreen = '/login_page_screen';

  static const String loginPageThreeScreen = '/login_page_three_screen';

  static const String loginPageFourScreen = '/login_page_four_screen';

  static const String loginPageOneScreen = '/login_page_one_screen';

  static const String loginPageTwoScreen = '/login_page_two_screen';

  static const String androidLargeOneScreen = '/android_large_one_screen';

  static const String androidLargeThreeScreen = '/android_large_three_screen';

  static const String androidLargeFourScreen = '/android_large_four_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loginPageScreen: (context) => LoginPageScreen(),
    loginPageThreeScreen: (context) => LoginPageThreeScreen(),
    loginPageFourScreen: (context) => LoginPageFourScreen(),
    loginPageOneScreen: (context) => LoginPageOneScreen(),
    loginPageTwoScreen: (context) => LoginPageTwoScreen(),
    androidLargeOneScreen: (context) => AndroidLargeOneScreen(),
    androidLargeThreeScreen: (context) => AndroidLargeThreeScreen(),
    androidLargeFourScreen: (context) => AndroidLargeFourScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
