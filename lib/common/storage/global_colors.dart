import 'package:flutter/material.dart';

class GlobalColors {
  static const Color primaryColor = Color(00000000);
  static const Color boderColor = Color.fromARGB(55, 154, 230, 1);
  static const Color ButtonColor = Color(0x379ae6ff);
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
