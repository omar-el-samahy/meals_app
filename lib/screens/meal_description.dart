import 'package:flutter/material.dart';

import '../data.dart';
import '../widgets_builder/solo_meal_widget.dart';
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var title = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;


    String name = title["name"];
    String id = title["id"];


    final meal = meals.firstWhere((meal) => meal.id.toString() == id);


    return Scaffold(
      appBar: AppBar(
        title: Text(
          name,
          style: const TextStyle(
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
      body: SafeArea(
        child: MealDescription(
          description: meal.description,
          price: meal.price,
          image: meal.imageURL,
          id: meal.id, title: meal.mealName,
        ),
      ),
    );
  }
}
