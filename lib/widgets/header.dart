import 'package:flutter/material.dart';
import 'package:vietnamhistory_app/common/global_styles.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipOval(
          child: SizedBox(
            width: 50,
            height: 50,
            // decoration: BoxDecoration(
            //   color: Colors.grey[300],
            // ),
            child: Image.asset("assets/images/avatar.png"),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Chào mừng",
              style: GlobalStyles.primaryFont2(context),
            ),
            Text(
              "Pham Anh Vu !",
              style: GlobalStyles.primaryFont3(context),
            )
          ],
        )
      ],
    );
  }
}
