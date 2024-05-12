import 'package:flutter/material.dart';

class TextThemes {
  static TextStyle getTextStyle({
    Color color = Colors.black,
    double fontSize = 14,
    String fontFamily = "WorkSans",
    FontWeight fontWeight = FontWeight.normal,
  }) =>
      TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
      );
}
