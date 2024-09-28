import 'package:flutter/material.dart';
import 'package:meals_app/screens/home.dart';
import 'package:meals_app/screens/meal_description.dart';
import 'package:meals_app/screens/meals.dart';

main() => runApp(const MealsApp());

class MealsApp extends StatelessWidget {
  const MealsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "meals": (context) => const MealsScreen(),
        "details": (context) => const DetailsScreen(),
      },
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFC7E0F4)),
      home: const HomeScreen(),
    );
  }
}
