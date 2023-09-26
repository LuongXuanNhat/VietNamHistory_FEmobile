import 'package:flutter/material.dart';
import 'package:vietnamhistory_app/route_generator.dart';
import 'package:vietnamhistory_app/screens/login_screen/mobile/login_screen.dart';
import 'package:get/get.dart';
import 'package:vietnamhistory_app/widgets/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: Get.key,
      initialRoute: '/provider',
    );
  }
}
