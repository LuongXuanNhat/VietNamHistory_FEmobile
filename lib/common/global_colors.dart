import 'package:flutter/material.dart';

import 'ui_parameters.dart';

const Color kPrimayLightColorLT = Color.fromARGB(255, 175, 84, 255);
const Color kPrimayColorLT = Color.fromARGB(255, 120, 30, 255);
const Color kPrimayColorDT = Color.fromARGB(255, 70, 14, 160);
const Color kPrimayLightColorDT = Color.fromARGB(255, 92, 15, 210);

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
  static Color colorbackgroundTF = HexColor('#F3F4F6');
  static Color colorDefault = HexColor('#FFFFFF');
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

const kOnSurfaceTextColor = Colors.white;
const kCorrectAnswerColor = Color.fromARGB(255, 0, 188, 100);
const kWrongAnswerColor = Color.fromARGB(255, 230, 24, 24);
const kNotAnswerColor = Color.fromARGB(255, 120, 50, 80);

const mainGradientLT = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      kPrimayLightColorLT,
      kPrimayColorLT,
    ]);

// main gradient pattern for Dark theme
const mainGradientDT = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      kPrimayLightColorDT,
      kPrimayColorDT,
    ]);
LinearGradient mainGradient(BuildContext context) =>
    UIParameters.isDarkMode(context) ? mainGradientDT : mainGradientLT;

Color customScaffoldColor(BuildContext context) =>
    UIParameters.isDarkMode(context)
        ? const Color.fromARGB(255, 14, 20, 44)
        : const Color.fromARGB(255, 240, 237, 255);

Color answerBorderColor(BuildContext context) =>
    UIParameters.isDarkMode(context)
        ? const Color.fromARGB(255, 20, 46, 158)
        : const Color.fromARGB(255, 221, 221, 221);

Color answerSelectedColor(BuildContext context) =>
    GlobalColors.ButtonNavigation;
