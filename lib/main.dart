import 'package:cart_assignment/Screens/home_screen.dart';
import 'package:cart_assignment/Themes/appbar_style.dart';
import 'package:cart_assignment/Themes/elevated_button_style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF9F9F9),
        appBarTheme: AppbarStyle.getAppbarStyle(),
        elevatedButtonTheme: ElevatedButtonStyle.getElevatedButtonStyle(),
      ),
    );
  }
}

