import 'package:flutter/material.dart';

class GlobalStyles {
  static const TextStyle boldStyle = TextStyle(fontWeight: FontWeight.bold);
  static const TextStyle normalStyle = TextStyle(fontWeight: FontWeight.normal);

  static TextStyle titilliumBold(BuildContext context) => const TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );

  static TextStyle primaryFont(BuildContext context) => const TextStyle(
      fontFamily: 'Mulish', fontSize: 32.0, fontWeight: FontWeight.w700);
}
