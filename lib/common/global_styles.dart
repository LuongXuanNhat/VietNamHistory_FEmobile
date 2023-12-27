import 'package:flutter/material.dart';

import 'global_colors.dart';

class GlobalStyles {
  static const TextStyle boldStyle = TextStyle(fontWeight: FontWeight.bold);
  static const TextStyle normalStyle = TextStyle(fontWeight: FontWeight.normal);

  static TextStyle defualtFont(BuildContext context) => const TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );

  static TextStyle titleFont(BuildContext context) => const TextStyle(
      fontFamily: 'Inter', fontSize: 12.0, fontWeight: FontWeight.w700);

  static TextStyle primaryFont(BuildContext context) => const TextStyle(
      fontFamily: 'Mulish', fontSize: 32.0, fontWeight: FontWeight.w700);
  static TextStyle primaryFont1(BuildContext context) => const TextStyle(
      fontFamily: 'Mulish', fontSize: 20.0, fontWeight: FontWeight.w300);
  static TextStyle primaryFont2(BuildContext context) => const TextStyle(
      fontFamily: 'Mulish', fontSize: 14.0, fontWeight: FontWeight.w400);
  static TextStyle primaryFont3(BuildContext context) => const TextStyle(
      fontFamily: 'Mulish', fontSize: 14.0, fontWeight: FontWeight.w600);
  static TextStyle titilliumBold(BuildContext context) => const TextStyle(
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w700,
      );
}

const kQuizeNumberCardTs = TextStyle(
    fontSize: 16, fontWeight: FontWeight.w500, color: kOnSurfaceTextColor);
const kDetailsTS = TextStyle(fontSize: 12);

TextStyle cardTitleTs(context) => const TextStyle(
    color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold);
