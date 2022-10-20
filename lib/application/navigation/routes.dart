import 'package:eagles_customer_end/presentation/googleForm.dart';
import 'package:eagles_customer_end/presentation/landingPage.dart';
import 'package:eagles_customer_end/presentation/loginPage.dart';
import 'package:eagles_customer_end/presentation/signupPage.dart';
import 'package:eagles_customer_end/presentation/welcomePage.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => WelcomePage());
      case "/login":
        return MaterialPageRoute(
          builder: (_) => LoginPage(),
        );
      case "/signUp":
        return MaterialPageRoute(
          builder: (_) => SignupPage(),
        );

      case "/googleForm":
        return MaterialPageRoute(
          builder: (_) => GoogleForm(),
        );

      case "/landingPage":
        return MaterialPageRoute(
          builder: (_) => LandingPage(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => WelcomePage(),
        );
    }
  }
}
