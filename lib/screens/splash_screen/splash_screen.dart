import 'dart:async';

import 'package:flutter/material.dart';
import 'package:after_layout/after_layout.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../common/storage/app_prefs.dart';
import '../../get_it.dart';
import '../../route_generator.dart';

class SplashScreen extends StatefulWidget {
  static SplashScreen provider() {
    return const SplashScreen();
  }

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with AfterLayoutMixin {
  final appPrefs = getIt<AppPref>();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    Future.delayed(const Duration(seconds: 2), () async {
      final hasToken = await appPrefs.getToken();
      if (hasToken != null) {
        navigator!.pushNamedAndRemoveUntil(
            RouteGenerator.mainScreen,
            arguments: {
              'currentIndex': 0,
            },
            (route) => false);
      } else {
        navigator!.pushNamedAndRemoveUntil(
            RouteGenerator.loginScreen, (route) => false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ScreenTypeLayout.builder(
        mobile: (BuildContext context) => Image.asset(
          'assets/images/splash_screen.jpg',
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
      )),
    );
  }
}
