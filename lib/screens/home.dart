import 'package:flutter/material.dart';
import 'package:meals_app/data.dart';
import 'package:meals_app/widgets_builder/categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Menu',
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
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                childAspectRatio: 1,
                mainAxisSpacing: 5),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return CategoryItem(
                id: categories[index].id,
                name: categories[index].name,
                image: categories[index].image,
              );
            }),
      )),
    );
  }
}
