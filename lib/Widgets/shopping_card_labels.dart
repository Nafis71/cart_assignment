import 'package:flutter/material.dart';

class ShoppingCardLabels {
  static Text getDressLabel({required String text, required bool isLabel}) {
    if (isLabel) {
      return Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.grey,
          fontFamily: "WorkSans",
        ),
      );
    }
    return Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontFamily: "WorkSans",
      ),
    );
  }
}
