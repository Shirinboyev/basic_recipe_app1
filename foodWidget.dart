import 'package:flutter/material.dart';

class foodWidget extends StatelessWidget {
  final String food;
  const foodWidget({
    super.key,
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
            '20 min',
            style: TextStyle(
              color: Colors.grey[400],
            ),
          ),
          Icon(
            Icons.star,
            size: 20,
            color: Colors.yellow[700],
          ),
          Text('5.0',
              style: TextStyle(
                color: Colors.yellow[700],
              )),
          Icon(
            Icons.local_fire_department,
            size: 20,
            color: Colors.red[300],
          ),
          Text('200 cal',
              style: TextStyle(
                color: Colors.red[300],
              )),
        ],
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}