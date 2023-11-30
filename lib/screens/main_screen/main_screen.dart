import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../../common/global_colors.dart';
import '../discover_sceen/discover_screen.dart';
import '../forum_question_screen/question_screen.dart';
import '../home_screen/home_screen.dart';
import '../quiz_screen/quiz_screnn.dart';
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
    const HomeScreen(),
    QuestionScreen.provider(),
    const QuizScreen(),
    DiscoverScreen.provider(),
    AccountSettingsScreen.provider(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[widget.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: GlobalColors.ButtonDefault,
          fixedColor: GlobalColors.ButtonNavigation,
          currentIndex: widget.currentIndex,
          onTap: (index) => changePage(index),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
            BottomNavigationBarItem(
                icon: Icon(Icons.question_answer), label: 'Hỏi đáp'),
            BottomNavigationBarItem(
                icon: Icon(Icons.create), label: 'Luyện tập'),
            BottomNavigationBarItem(
                icon: Icon(Icons.public), label: 'Khám phá'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'Người dùng'),
          ]),
    );
  }

  changePage(int index) {
    setState(() {
      widget.currentIndex = index;
    });
  }
}
