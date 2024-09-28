import 'package:flutter/material.dart';
import 'package:meals_app/screens/home.dart';

main() => runApp(MealsApp());

class MealsApp extends StatelessWidget {
  const MealsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
