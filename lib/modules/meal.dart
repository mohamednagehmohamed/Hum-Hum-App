//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';

enum Complexity { simple, challenging, hard }
enum Affordability { affordable, pricy, luxuries }

class Meal {
  final String id;
  final List<String> categories;
  final String imageurl;
  final List<String> ingrediants;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLacatoseFree;
  final bool isvegan;
  final bool isvegetrain;
  final String title;
  // final Color color;
  const Meal({
    required this.id,
    required this.title,
    //this.color = Colors.black,
    required this.categories,
    required this.imageurl,
    required this.ingrediants,
    required this.steps,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.isGlutenFree,
    required this.isLacatoseFree,
    required this.isvegan,
    required this.isvegetrain,
  });
}
