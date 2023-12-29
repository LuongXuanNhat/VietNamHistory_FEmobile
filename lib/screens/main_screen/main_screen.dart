import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../common/global_colors.dart';
import '../discover_sceen/discover_screen.dart';
import '../forum_question_screen/question_screen.dart';
import '../news_screen/news_screen.dart';
import '../quiz_screen/quiz_screen.dart';
import '../user_screen/account_settings_screen.dart';

class MainScreen extends StatefulWidget {
  int currentIndex = 0;
  MainScreen({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late StreamSubscription subscription;
  bool isDeviceConnected = false;
  bool isAlertSet = false;
  List<dynamic> pages = [
    DiscoverScreen.provider(),
    NewsScreen.providers(),
    QuizScreen.provider(),
    QuestionScreen.provider(),
    AccountSettingsScreen.provider(),
  ];

  @override
  void initState() {
    getConnectivity();
    super.initState();
  }

  getConnectivity() =>
      subscription = Connectivity().onConnectivityChanged.listen(
        (ConnectivityResult result) async {
          isDeviceConnected = await InternetConnectionChecker().hasConnection;
          if (!isDeviceConnected && isAlertSet == false) {
            showDialogBox();
            setState(() => isAlertSet = true);
          }
        },
      );

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.public, size: 30),
      const Icon(Icons.fiber_new_sharp, size: 30),
      const Icon(Icons.document_scanner_sharp, size: 30),
      const Icon(Icons.question_answer, size: 30),
      const Icon(Icons.person, size: 30),
    ];
    return Scaffold(
      backgroundColor: Colors.white,

      extendBody: true,
      body: pages[widget.currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: const IconThemeData(color: Colors.white)),
        child: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: GlobalColors.ButtonNavigation,
          height: 60,
          items: items,
          index: widget.currentIndex,
          onTap: (index) => setState(() => widget.currentIndex = index),
        ),
      ), // CurvedNavigationBar
    ); // Scaffold
  }

  changePage(int index) {
    setState(() {
      widget.currentIndex = index;
    });
  }

  showDialogBox() => showCupertinoDialog<String>(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
          title: const Text('Không có kết nối mạng'),
          content: const Text('Vui lòng kiểm tra lại kết nối mạng của bạn'),
          actions: <Widget>[
            TextButton(
              onPressed: () async {
                Navigator.pop(context, 'Cancel');
                setState(() => isAlertSet = false);
                isDeviceConnected =
                    await InternetConnectionChecker().hasConnection;
                if (!isDeviceConnected && isAlertSet == false) {
                  showDialogBox();
                  setState(() => isAlertSet = true);
                }
              },
              child: const Text('Thử lại'),
            ),
          ],
        ),
      );
}
