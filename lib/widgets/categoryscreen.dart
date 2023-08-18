import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealapplication/1.1%20dummy_data.dart';
import 'package:mealapplication/homepage.dart';
import 'package:mealapplication/widgets/categoryitem.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: DUMMY_CATEGORIES
          .map((e) => CategoryItem(
              e.id,
              HomePageState.arabicvalue == false ? e.englishtitle : e.title,
              e.color,
              e.image))
          .toList(),
          
    );
  }
}
