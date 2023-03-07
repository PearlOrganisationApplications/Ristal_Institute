import 'package:flutter/material.dart';
import 'package:ristal_institute/Src/Screens/LoginScreen/login_screen.dart';
import 'package:ristal_institute/Src/Screens/Splash%20Screen/splash.screen.dart';

import '../../Src/Screens/Home Sceen/home.screen.dart';

class AppRouter {
  static const String splashRoute = "/splash";
  static const String loginRoute = "/login";
  static const String homeRoute = "/home";


  static Route? generateRounting(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        {
          return MaterialPageRoute(builder: (_) => const SplashScreen());
        }
      case loginRoute:
        {
          return MaterialPageRoute(
            builder: (_) => LoginScreen(),
          );
        }
      case homeRoute:
        {
          return MaterialPageRoute(
            builder: (_) => const HomeScreen(),
          );
        }
    }
    return null;
  }
}
