
import 'package:flutter/material.dart';
//import 'package:mealapplication/1.1%20dummy_data.dart';
//import 'package:mealapplication/widgets/categoryitem.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.deepOrangeAccent,
                Colors.deepOrange,
                Colors.deepOrangeAccent
              ]),
            ),
            child: Center(
              child: Expanded(
                  child: Text(
                'Cockies Up !!',
                style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Container(
            width: double.infinity,
            child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.set_meal_rounded,
                  color: Colors.pink,
                ),
                label: Text(
                  'Meals',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
          ),
          SizedBox(
            height: 2,
          ),
          Container(
            width: double.infinity,
            child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  color: Colors.pink,
                ),
                label: Text(
                  'Settings',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
          ),
          Container(
            width: double.infinity,
            child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.category,
                  color: Colors.pink,
                ),
                label: Text(
                  'Categories',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
          ),
          SizedBox(
            height: 2,
          ),
          Container(
            width: double.infinity,
            child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.star,
                  color: Colors.pink,
                ),
                label: Text(
                  'Favoriets',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
          ),
        ],
      ),
    );
  }
}
