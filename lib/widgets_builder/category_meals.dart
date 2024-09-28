import 'package:flutter/material.dart';

class CategoryMeals extends StatelessWidget {
  const CategoryMeals(
      {super.key,
      required this.id,
      required this.name,
      required this.image,
      required this.category,
      required this.description,
      required this.price,
      required this.time});
  final String id, name, image, price, time, category, description;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Container(
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "details", arguments: {
                    "name": name,
                    "id": id,
                    "image": image,
                    "price": price,
                    "time": time,
                    "category": category,
                    "description": description,
                  });
                },
                icon: const Icon(Icons.navigate_next),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
