import 'package:flutter/material.dart';

class Pizza extends StatefulWidget {
 final String name;
 final Map data;
  const Pizza({super.key,required this.data,required this.name,});

  @override
  State<Pizza> createState() => _PizzaState();
}

class _PizzaState extends State<Pizza> {
  @override
  Widget build(BuildContext context) {
    print(widget.name);
    print(widget.data);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
    );
  }
}