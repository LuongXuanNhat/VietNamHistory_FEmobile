import 'package:flutter/material.dart';
import 'screens/errors_screen/not_found_screen.dart';
import 'screens/home_screen/home_screen.dart';
import 'screens/login_screen/mobile/login_screen.dart';

import 'screens/main_screen/main_screen.dart';
import 'screens/register_screen/register_screen.dart';

import 'screens/discover_sceen/discover_screen.dart';
import 'screens/signup_screen/signup_screen.dart';
import 'screens/splash_screen/splash_screen.dart';
import 'screens/user_screen/account_settings_screen.dart';
import 'screens/user_screen/update_profile_screen.dart';

class RouteGenerator {
  static const String splashScreen = '/';
  static const String loginScreen = '/provider';
  static const String registerScreen = '/register_screen';
  static const String homeScreen = '/home_screen';
  static const String mainScreen = '/main_screen';
  static const String discoverScreen = 'discover_screen';
  static const String signupScreen = '/signup_screen';
  static const String accounsettingsScreen = '/account_settings_screen';
  static const String updateProfileScreen = '/update_profile_screen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => SplashScreen.provider(),
          settings: settings,
        );
      case loginScreen:
        return MaterialPageRoute(
          builder: (context) => LoginScreen.provider(),
          settings: settings,
        );
      case signupScreen:
        return MaterialPageRoute(
            builder: (context) => SignUpScreen.provider(), settings: settings);
      case registerScreen:
        return MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
          settings: settings,
        );

      case homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
          settings: settings,
        );
      case accounsettingsScreen:
        return MaterialPageRoute(
          builder: (context) => AccountSettingsScreen.provider(),
          settings: settings,
        );
      case updateProfileScreen:
        return MaterialPageRoute(
          builder: (context) => UpdateProfileScreen.provider(),
          settings: settings,
        );
      case mainScreen:
        return MaterialPageRoute(
            builder: (context) => const MainScreen(), settings: settings);
      case discoverScreen:
        return MaterialPageRoute(
            builder: (context) => const DiscoverScreen(), settings: settings);
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundScreen(),
          settings: settings,
        );
    }
  }
}
