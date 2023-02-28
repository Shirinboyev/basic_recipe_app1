import 'package:flutter/material.dart';
import 'package:basic_recipe_app1/foodWidget.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List foods = [
    'Pizza',
    'Burger',
    'Chicken',
    'Somsa',
    'Lagmon',
    'Barak',
  ];
  List<Widget> getFood(foods) {
    List<Widget> foodList = [];
    for (var food in foods) {
      foodList.add(
        foodWidget(food: food),
      );
    }
    return foodList;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children:getFood(foods)
         ),
      ),
    ));
  }
}
