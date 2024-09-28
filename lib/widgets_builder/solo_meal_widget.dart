import 'package:flutter/material.dart';

class MealDescription extends StatelessWidget {
  const MealDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset("assets/images/alfredo.jpg"),
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text("Title"), Text("Price")],
        ),
        const Text("Discription"),
      ],
    ));
  }
}
