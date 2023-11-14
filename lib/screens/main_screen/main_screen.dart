import 'package:flutter/material.dart';
import '../../common/global_colors.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../discover_sceen/discover_screen.dart';
import '../home_screen/home_screen.dart';
import '../user_screen/account_settings_screen.dart';

class MainScreen extends StatefulWidget {
  final TextEditingController? txtSearch;
  const MainScreen({
    Key? key,
    this.txtSearch,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List<Widget> body = [
    const HomeScreen(),
    const Icon(Icons.home),
    const Icon(Icons.menu),
    DiscoverScreen.provider(),
    AccountSettingsScreen.provider(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: const BottomNavigation(),
      body: Center(
        child: body[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (intdex) {
          setState(() {
            currentIndex = intdex;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Trang chủ",
            icon: FaIcon(
              FontAwesomeIcons.house,
              color: currentIndex == 0
                  ? GlobalColors.ButtonNavigation
                  : Colors.black45,
            ),
          ),
          BottomNavigationBarItem(
            label: "Lớp học",
            icon: FaIcon(
              FontAwesomeIcons.users,
              color: currentIndex == 1
                  ? GlobalColors.ButtonNavigation
                  : Colors.black45,
            ),
          ),
          BottomNavigationBarItem(
            label: "Khóa học",
            icon: FaIcon(
              FontAwesomeIcons.briefcase,
              color: currentIndex == 2
                  ? GlobalColors.ButtonNavigation
                  : Colors.black45,
            ),
          ),
          BottomNavigationBarItem(
            label: "Diễn đàn",
            icon: FaIcon(
              FontAwesomeIcons.comments,
              color: currentIndex == 3
                  ? GlobalColors.ButtonNavigation
                  : Colors.black45,
            ),
          ),
          BottomNavigationBarItem(
            label: "Cá nhân",
            icon: FaIcon(
              FontAwesomeIcons.user,
              color: currentIndex == 4
                  ? GlobalColors.ButtonNavigation
                  : Colors.black45,
            ),
          ),
        ],
      ),
    );
  }
}
