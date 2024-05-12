import 'package:cart_assignment/Themes/text_theme.dart';
import 'package:flutter/material.dart';

SnackBar showSnackBar({
  required String content,
}) =>
    SnackBar(
      content: Text(
        content,
        style: TextThemes.getTextStyle(fontSize: 15, color: Colors.white),
      ),
      padding: const EdgeInsets.all(20.00),
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.green[600],
      elevation: 10,
    );
