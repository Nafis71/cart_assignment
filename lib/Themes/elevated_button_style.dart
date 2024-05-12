import 'package:cart_assignment/Themes/text_theme.dart';
import 'package:flutter/material.dart';

class ElevatedButtonStyle {
  static ElevatedButtonThemeData getElevatedButtonStyle() =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFDB3022),
          elevation: 5,
          shadowColor: Colors.red,
          foregroundColor: Colors.white,
          textStyle: TextThemes.getTextStyle(
              fontSize: 16, fontWeight: FontWeight.w400),
        ),
      );
}
