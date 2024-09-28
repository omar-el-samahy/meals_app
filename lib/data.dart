import 'package:meals_app/models/category.dart';
import 'package:meals_app/models/meal.dart';

const List<Categories> categories = [
  Categories(id: "c1", name: "Chinese", image: "assets/images/chinese.jpg"),
  Categories(id: "c2", name: "Indian", image: "assets/images/indian.jpg"),
  Categories(
      id: "c3", name: "Oriental Meals", image: "assets/images/oriental.jpg"),
  Categories(id: "c4", name: "Pasta", image: "assets/images/pasta.jpg"),
  Categories(id: "c5", name: "Sandwiches", image: "assets/images/sand.jpg"),
  Categories(id: "c6", name: "Salads", image: "assets/images/salad.jpg"),
  Categories(id: "c7", name: "Rice", image: "assets/images/Rice.jpg"),
  Categories(id: "c8", name: "Dessert", image: "assets/images/desatr.jpg"),
];
const meals = [
  Meal(
      id: "m1",
      title: "Lamp Chops",
      imageURL: "assets/images/lampchops.jpg",
      price: "150",
      time: "35",
      description:
          "Fillet Steak round 275gm,topped with bron pepper sauce served with your choice of 2sides",
      category: "c3"),
  Meal(
      id: "m2",
      title: "Butter Chicken",
      imageURL: "assets/images/butterchicken.jpg",
      price: "90",
      time: "25",
      description: "----------------",
      category: "c2"),
  Meal(
      id: "m3",
      title: "Alfredo",
      imageURL: "assets/images/alfredo.jpg",
      price: "60",
      time: "25",
      description: "----------------",
      category: "c4"),
  Meal(
      id: "m4",
      title: "Steak",
      imageURL: "assets/images/steak.jpg",
      price: "150",
      time: "30",
      description: "----------------",
      category: "c3"),
  Meal(
      id: "m5",
      title: "Smoked Cheesy ",
      imageURL: "assets/images/smoked_cheesy.jpg",
      price: "90",
      time: "25",
      description: "----------------",
      category: "c7"),
  Meal(
      id: "m6",
      title: "Lamp Biryani",
      imageURL: "assets/images/lamp_biryani.jpg",
      price: "90",
      time: "30",
      description: "----------------",
      category: "c2"),
  Meal(
      id: "m7",
      title: "Shish Tawook Rice",
      imageURL: "assets/images/shish_Tawook.jpg",
      price: "99",
      time: "30",
      description: "----------------",
      category: "c7"),
  Meal(
      id: "m8",
      title: "Lamp Shank",
      imageURL: "assets/images/lamp_shank.jpg",
      price: "130",
      time: "35",
      description: "----------------",
      category: "c3")
];
