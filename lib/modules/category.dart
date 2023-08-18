
import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final String englishtitle;
  final String image;
  final Color color;
  const Category(
      {required this.id,
      required this.title,
      required this.englishtitle,
      required this.image,
      this.color = Colors.black});
}
