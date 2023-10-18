import 'package:flutter/material.dart';

class GlobalColors {
  static const Color primaryColor = Color(0x00000000);
  static const Color boderColor = Color.fromARGB(55, 154, 230, 1);
  static const Color ButtonColor = Color(0x379ae6ff);
  static Color ButtonNavigation = HexColor('#00bdd6');
  static Color ButtonDefault = HexColor('#565E6C');
  static Color Categories = HexColor('#F3F4F6');
  static Color TextHint = HexColor('#6E7787');
  static Color border_color = HexColor('#DEE1E6FF');
  static Color background1 = HexColor('#F9FAFB');
  static Color colorBack = HexColor('#9095A0');
  static Color colorButton1 = HexColor('#00BDD6');
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
