/*import 'dart:html';
import 'dart:ui';

import 'package:flare_flutter/flare_actor.dart';

import 'package:flutter/material.dart';
import 'package:mealapplication/homepage.dart';
import 'package:mealapplication/screens/secondsplash.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(NewSplash());
}

class NewSplash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NewSplashState();
  }
}

class NewSplashState extends State<NewSplash> {
  double rating = 5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 200,
                    height: 200,
                    child: RiveAnimation.asset(
                      'images/soup.riv',
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                    )
                    /*FlareActor(
                    'images/soup.riv',
                    alignment: Alignment.center,
                    fit: BoxFit.contain,
                    animation: '5+',
                  ),*/
                    ),
                Text(
                  HomePageState.arabicvalue == false
                      ? 'Meal App'
                      : 'تطبيق الوجبات',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}*/
