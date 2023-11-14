import 'package:bmprogresshud/bmprogresshud.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'get_it.dart';
import 'route_generator.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // GetIt
  await configureDependencies();

  /// Web
  if (GetPlatform.isWeb) {
    setPathUrlStrategy();
  }

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
    return ProgressHud(
      isGlobalHud: true,
      child: GetMaterialApp(
        builder: (BuildContext context, Widget? child) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: child!);
        },
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.generateRoute,
        navigatorKey: Get.key,
        initialRoute: '/',
      ),
    );
  }
}
