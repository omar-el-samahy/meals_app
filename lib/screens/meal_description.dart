import 'package:flutter/material.dart';
import 'package:meals_app/widgets_builder/solo_meal_widget.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var title =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String name = title["name"];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${title["name"]}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            fontFamily: 'Arial',
            color: Colors.white,
            shadows: [
              Shadow(
                offset: Offset(1.0, 2.0),
                blurRadius: 5.0,
                color: Colors.black54,
              ),
            ],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: const SafeArea(child: MealDescription()),
    );
  }
}
