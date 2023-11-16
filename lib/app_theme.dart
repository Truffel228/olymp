import 'package:flutter/material.dart';

class AppTheme {
  static const Color blackFontColor = Color(0xFF171B34);
  static const Color greyFontColor = Color(0xFFbebebe);
  static const Color greyFontColor2 = Color(0xFFbdbdbd);
  static const Color greyFontColor3 = Color(0xFFA3A3A3);

  static const Color grey = Color(0xFFF0F0F0);

  static ThemeData get theme => ThemeData(
        primaryColor: const Color(0xFF007AFF),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Color(0xFF007AFF)),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: blackFontColor,
          ),
          displaySmall: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 12,
            color: blackFontColor,
          ),
          titleLarge: TextStyle(
            fontSize: 11,
            color: greyFontColor2,
          ),
          titleMedium: TextStyle(
            fontSize: 10,
            color: greyFontColor2,
            fontWeight: FontWeight.w600,
          ),
          titleSmall: TextStyle(
            color: greyFontColor,
            fontSize: 11,
          ),
          labelMedium: TextStyle(
            fontSize: 10,
            color: greyFontColor3,
            height: 1.7,
          ),
          labelSmall: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      );
}
