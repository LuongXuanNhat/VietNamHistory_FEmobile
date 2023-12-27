import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../common/global_colors.dart';
import '../discover_sceen/discover_screen.dart';
import '../document_screen/detail_document/detail_document_screen.dart';
import '../document_screen/document_screen.dart';
import '../forum_question_screen/question_screen.dart';
import '../home_screen/home_screen.dart';
import '../news_screen/news_screen.dart';
import '../quiz_screen/quiz_screen.dart';
import '../user_screen/account_settings_screen.dart';

class MainScreen extends StatefulWidget {
//  final TextEditingController? txtSearch;
  int currentIndex = 0;
  MainScreen({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<dynamic> pages = [
    DiscoverScreen.provider(),
    NewsScreen.provider(),
    QuizScreen.provider(),
    QuestionScreen.provider(),
    AccountSettingsScreen.provider(),
  ];

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
    // return Scaffold(
    //   body: pages[widget.currentIndex],
    //   bottomNavigationBar: BottomNavigationBar(
    //       unselectedItemColor: GlobalColors.ButtonDefault,
    //       fixedColor: GlobalColors.ButtonNavigation,
    //       currentIndex: widget.currentIndex,
    //       onTap: (index) => changePage(index),
    //       items: const [
    //         BottomNavigationBarItem(
    //             icon: Icon(Icons.public), label: 'Khám phá'),
    //         BottomNavigationBarItem(
    //             icon: Icon(Icons.fiber_new_sharp), label: 'Tin tức'),
    //         BottomNavigationBarItem(
    //             icon: Icon(Icons.document_scanner_sharp), label: 'Tài liệu'),
    //         BottomNavigationBarItem(
    //             icon: Icon(Icons.question_answer), label: 'Hỏi đáp'),
    //         BottomNavigationBarItem(
    //             icon: Icon(Icons.person), label: 'Người dùng'),
    //       ]),
    // );
  }

  changePage(int index) {
    setState(() {
      widget.currentIndex = index;
    });
  }
}
