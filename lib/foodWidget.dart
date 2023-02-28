import 'package:basic_recipe_app1/Pizza.dart';
import 'package:flutter/material.dart';
   Map data = {
    'Chicken':   {'time': '15', 'star':'4.5', 'cal':'350'},
    'Pizza' :    {'time': '20', 'star':'3.5', 'cal':'300'},
    'Burger':    {'time': '10', 'star':'2.5', 'cal':'350'},
    'Somsa' :    {'time': '30', 'star':'5.0', 'cal':'400'},
    'Lagmon':    {'time': '25', 'star':'5.5', 'cal':'300'},
    'Barak':     {'time': '15', 'star':'6.0', 'cal':'500'},
    'Palov':     {'time': '40', 'star':'7.0', 'cal':'600'},
    'Perashki':  {'time': '10', 'star':'3.0', 'cal':'250'},
   };
class foodWidget extends StatelessWidget {
  final String food;
  const foodWidget({
    super.key,
    required this.food,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Pizza(data: data[food],name: food,)));
      },
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/${food}.png'),
      ),
      title: Text(food,
            style: TextStyle(
              fontSize: 18,
            fontWeight: FontWeight.w500,
          )),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.access_time,
            size: 20,
            color: Colors.grey[300],
          ),
          Text( 
            data[food]['time'],
          style: TextStyle(
              color: Colors.grey[400],
            ),
          ),
          Icon(
            Icons.star,
            size: 20,
            color: Colors.yellow[700],
          ),
          Text(data[food]['star'],
              style: TextStyle(
                color: Colors.yellow[700],
              )),
          Icon(
            Icons.local_fire_department,
            size: 20,
            color: Colors.red[300],
          ),
          Text(data[food]['cal'],
              style: TextStyle(
                color: Colors.red[300],
              )),
        ],
      ),
      trailing: Icon(Icons.favorite_outline,color: Colors.grey,),
    );
  }
}