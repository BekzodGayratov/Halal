import 'dart:js';

import 'package:flutter/material.dart';
import 'package:halal/view/pages/boarding_pages.dart';
import 'package:halal/view/pages/buy_animal_page.dart';
import 'package:halal/view/pages/info_page.dart';
import 'package:halal/view/pages/language_page.dart';
import 'package:halal/view/pages/live_page.dart';
import 'package:halal/view/pages/login_page.dart';
import 'package:halal/view/pages/sell_animal_page.dart';
import 'package:halal/view/pages/sign_up_page.dart';
import 'package:halal/view/pages/verify_otp_page.dart';
import 'package:halal/view/screens/current_screen.dart';
import 'package:halal/view/screens/home_screen.dart';
import 'package:halal/view/screens/splash_screen.dart';

class MyRouter {
  Route? onGenerate(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case '/splash':
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case '/':
        return MaterialPageRoute(builder: (context) => CurrentScreen());
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
      case '/home':
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case '/buyAnimal':
        return MaterialPageRoute(builder: (context) => BuyAnimalPage());
      case '/info':
        return MaterialPageRoute(
            builder: (context) => InfoPage(title: args as String));
      case '/live':
        return MaterialPageRoute(builder: (context) => LivePage());
      case '/sell': 
        return MaterialPageRoute(builder: (context)=> SellAnimalPage());
    }
  }
}
