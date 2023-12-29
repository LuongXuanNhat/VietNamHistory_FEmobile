import 'package:bmprogresshud/bmprogresshud.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:uni_links/uni_links.dart';
import 'package:url_strategy/url_strategy.dart';

import 'get_it.dart';
import 'route_generator.dart';
import 'package:get/get.dart';
import 'screens/quiz_screen/start_quiz/quiz_controller.dart';

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
    Get.put(QuizController());
    return ProgressHud(
      isGlobalHud: true,
      child: GetMaterialApp(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''), // English
          Locale('vi', ''), // Vietnamese
        ],
        builder: (BuildContext context, Widget? child) {
          return MediaQuery(
              data: MediaQuery.of(context)
                  .copyWith(textScaler: const TextScaler.linear(1.0)),
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
