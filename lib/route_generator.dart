import 'package:flutter/material.dart';
import 'package:vietnamhistory_app/screens/errors_screen/not_found_screen.dart';
import 'package:vietnamhistory_app/screens/login_screen/mobile/login_screen.dart';
import 'package:vietnamhistory_app/screens/main_screen/main_screen.dart';
import 'package:vietnamhistory_app/screens/register_screen/register_screen.dart';

class RouteGenerator {
  static const String loginScreen = '/provider';
  static const String registerScreen = '/register_screen';
  static const String mainScreen = '/main_screen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
          settings: settings,
        );
      case registerScreen:
        return MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
          settings: settings,
        );
      case mainScreen:
        return MaterialPageRoute(
            builder: (context) => const MainScreen(), settings: settings);
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundScreen(),
          settings: settings,
        );
    }
  }
}
