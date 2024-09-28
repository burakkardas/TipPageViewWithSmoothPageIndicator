import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get themeData => ThemeData(
        primaryColor: const Color(0xFF6342E4),
        disabledColor: const Color(0xFFC0C0C0),
        textTheme: const TextTheme(
          displaySmall: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),
        ),
      );
}
