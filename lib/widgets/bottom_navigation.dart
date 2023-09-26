import 'package:flutter/material.dart';
import 'package:vietnamhistory_app/common/storage/global_colors.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 55,
      child: BottomNavigationBar(
        showSelectedLabels: false,
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            label: "Trang chủ",
            icon: FaIcon(
              FontAwesomeIcons.house,
              color:
                  index == 0 ? GlobalColors.ButtonNavigation : Colors.black45,
            ),
          ),
          BottomNavigationBarItem(
            label: "Lớp học",
            icon: FaIcon(
              FontAwesomeIcons.users,
              color:
                  index == 1 ? GlobalColors.ButtonNavigation : Colors.black45,
            ),
          ),
          BottomNavigationBarItem(
            label: "Khóa học",
            icon: FaIcon(
              FontAwesomeIcons.briefcase,
              color:
                  index == 2 ? GlobalColors.ButtonNavigation : Colors.black45,
            ),
          ),
          BottomNavigationBarItem(
            label: "Diễn đàn",
            icon: FaIcon(
              FontAwesomeIcons.comments,
              color:
                  index == 3 ? GlobalColors.ButtonNavigation : Colors.black45,
            ),
          ),
          BottomNavigationBarItem(
            label: "Cá nhân",
            icon: FaIcon(
              FontAwesomeIcons.user,
              color:
                  index == 4 ? GlobalColors.ButtonNavigation : Colors.black45,
            ),
          ),
        ],
      ),
    );
  }
}
