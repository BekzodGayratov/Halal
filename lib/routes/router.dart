import 'package:flutter/material.dart';
import 'package:halal/view/pages/boarding_pages.dart';
import 'package:halal/view/pages/language_page.dart';
import 'package:halal/view/pages/login_page.dart';
import 'package:halal/view/pages/sign_up_page.dart';
import 'package:halal/view/pages/verify_otp_page.dart';
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
      case '/login':
        return MaterialPageRoute(builder: (context) => LoginPage());
      case '/signUp':
        return MaterialPageRoute(builder: (context) => SignUpPage());
      case '/verify':
        return MaterialPageRoute(
            builder: (context) => VerifyPage(phoneNumber: "+998916952632"));
    }
  }
}
