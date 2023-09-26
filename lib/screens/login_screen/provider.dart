import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:vietnamhistory_app/screens/login_screen/mobile/login_screen.dart';

class ProviderLogin extends StatelessWidget {
  const ProviderLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const LoginScreen(),
    );
  }
}
