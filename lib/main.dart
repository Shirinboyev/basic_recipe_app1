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
    'Chicken',
    'Pizza',
    'Burger',
    'Somsa',
    'Lagmon',
    'Lagmon',
    'Lagmon',
    'Lagmon',
    'Lagmon',
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
  List <Map> data = [
    {'name':'Chicken', 'clock':'15', 'star':'4.5','cal':'350 cal'},
    {'name':'Pizza', 'clock':'20', 'star':'4.0','cal':'400 cal'},
    {'name':'Burger', 'clock':'10', 'star':'3.0','cal':'300 cal'},
    {'name':'Somsa', 'clock':'30', 'star':'5.0','cal':'500 cal'},
    {'name':'Lagmon', 'clock':'20', 'star':'4.5','cal':'450 cal'},
  ];
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
