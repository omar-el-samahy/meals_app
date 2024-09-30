import 'package:flutter/material.dart';
import 'package:meals_app/data.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets_builder/category_meals.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String id = data["id"];
    List<Meal> mealsFiltered = meals.where((i) {
      return i.category.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${data["name"]}",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
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
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CategoryMeals(
            id: mealsFiltered[index].id,
            name: mealsFiltered[index].mealName,
            image: mealsFiltered[index].imageURL,
            category: mealsFiltered[index].category,
            description: mealsFiltered[index].description,
            price: mealsFiltered[index].price,
            time: mealsFiltered[index].time,
          );
        },
        itemCount: mealsFiltered.length,
      ),
    );
  }
}
