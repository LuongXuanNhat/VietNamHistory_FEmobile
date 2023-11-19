import 'package:flutter/material.dart';
import '../../common/global_colors.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../discover_sceen/discover_screen.dart';
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
  List<Widget> body = [
    const HomeScreen(),
    const Icon(Icons.home),
    const QuizScreen(),
    DiscoverScreen.provider(),
    AccountSettingsScreen.provider(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: const BottomNavigation(),
      body: Center(
        child: body[widget.currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.currentIndex,
        onTap: (intdex) {
          setState(() {
            widget.currentIndex = intdex;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Trang chủ",
            icon: FaIcon(
              FontAwesomeIcons.house,
              color: widget.currentIndex == 0
                  ? GlobalColors.ButtonNavigation
                  : Colors.black45,
            ),
          ),
          BottomNavigationBarItem(
            label: "Lớp học",
            icon: FaIcon(
              FontAwesomeIcons.users,
              color: widget.currentIndex == 1
                  ? GlobalColors.ButtonNavigation
                  : Colors.black45,
            ),
          ),
          BottomNavigationBarItem(
            label: "Khóa học",
            icon: FaIcon(
              FontAwesomeIcons.briefcase,
              color: widget.currentIndex == 2
                  ? GlobalColors.ButtonNavigation
                  : Colors.black45,
            ),
          ),
          BottomNavigationBarItem(
            label: "Diễn đàn",
            icon: FaIcon(
              FontAwesomeIcons.comments,
              color: widget.currentIndex == 3
                  ? GlobalColors.ButtonNavigation
                  : Colors.black45,
            ),
          ),
          BottomNavigationBarItem(
            label: "Cá nhân",
            icon: FaIcon(
              FontAwesomeIcons.user,
              color: widget.currentIndex == 4
                  ? GlobalColors.ButtonNavigation
                  : Colors.black45,
            ),
          ),
        ],
      ),
    );
  }
}
