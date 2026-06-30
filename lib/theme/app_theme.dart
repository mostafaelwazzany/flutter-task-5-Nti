import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFF7F8FC),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFF7F8FC),
      elevation: 0,
      centerTitle: true,
      foregroundColor: Colors.black,
    ),
  );

  const AppTheme._();
}
