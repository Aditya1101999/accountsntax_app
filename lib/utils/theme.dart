import 'package:flutter/material.dart';

ThemeData buildThemeData() {
  return ThemeData(
    primarySwatch: const MaterialColor(
      0xFF663274,
      <int, Color>{
        50: Color(0xFF663274),
        100: Color(0xFF663274),
        200: Color(0xFF663274),
        300: Color(0xFF663274),
        400: Color(0xFF663274),
        500: Color(0xFF663274),
        600: Color(0xFF663274),
        700: Color(0xFF663274),
        800: Color(0xFF663274),
        900: Color(0xFF663274),
      },
    ),
    primaryColor: const Color.fromARGB(255, 215, 147, 154),
    hintColor: Colors.black,
    scaffoldBackgroundColor:const Color(0xFFF9E8E3),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF663274),
    ),
  );
}
