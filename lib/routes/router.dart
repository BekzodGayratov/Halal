import 'package:flutter/material.dart';
import 'package:halal/view/pages/boarding_pages.dart';
import 'package:halal/view/pages/language_page.dart';
import 'package:halal/view/screens/home_screen.dart';
import 'package:halal/view/screens/splash_screen.dart';

class MyRouter {
  Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case '/splash':
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case '/':
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case '/language':
        return MaterialPageRoute(builder: (context) => LanguagePage());
      case '/boarding':
        return MaterialPageRoute(builder: (context) => BoardingPage());
    }
  }
}
