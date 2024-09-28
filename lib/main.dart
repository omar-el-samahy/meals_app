import 'package:flutter/material.dart';
import 'package:meals_app/screens/home.dart';

main() => runApp(const MealsApp());

class MealsApp extends StatelessWidget {
  const MealsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFC7E0F4)),
      home: const HomeScreen(),
    );
  }
}
