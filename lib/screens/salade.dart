//import 'dart:async';
//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:mealapplication/homepage.dart';
import 'package:mealapplication/modules/floatingbutton.dart';

//void main() => runApp(SaladePage());

class SaladePage extends StatefulWidget {
  @override
  SaladePageState createState() => SaladePageState();
}

class SaladePageState extends State<SaladePage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: HomePageState.arabicvalue == false
          ? TextDirection.ltr
          : TextDirection.rtl,
      child: Scaffold(
        floatingActionButton: SpeedDial(
          shape: MyFloatingButton(),
          animatedIcon: AnimatedIcons.menu_close,
          backgroundColor: Colors.black,
          overlayColor: Colors.black,
          children: [
            SpeedDialChild(
                child: Icon(Icons.exit_to_app),
                label: 'Exit',
                labelStyle: TextStyle(color: Colors.black),
                onTap: () {
                  setState(() {
                    SystemNavigator.pop();
                  });
                }),
          ],
        ),
        backgroundColor:
            HomePageState.darkmode == false ? Colors.white : Colors.black,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          toolbarHeight: 70,
          title: Text(
            'Salade With Cherry Tomato',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width*0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                gradient: LinearGradient(colors: [
                  Colors.pinkAccent,
                  Colors.deepPurple,
                  Colors.pinkAccent
                ])),
          ),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/sa.jpg',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 8,
            ),
            Center(
              child: Text(
                HomePageState.arabicvalue == false ? 'Ingredients' : 'مكونات',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.orange),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.pinkAccent,
                        Colors.deepPurple,
                        Colors.pinkAccent,
                      ]),
                    ),
                    child: Text(
                      'White and Green Asparagus',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.pinkAccent,
                        Colors.deepPurple,
                        Colors.pinkAccent,
                      ]),
                    ),
                    child: Text(
                      '30g Pine Nuts',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.pinkAccent,
                        Colors.deepPurple,
                        Colors.pinkAccent,
                      ]),
                    ),
                    child: Text(
                      '300g Cherry Tomatoes',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.pinkAccent,
                        Colors.deepPurple,
                        Colors.pinkAccent,
                      ]),
                    ),
                    child: Text(
                      'Salad',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.pinkAccent,
                        Colors.deepPurple,
                        Colors.pinkAccent,
                      ]),
                    ),
                    child: Text(
                      'Salt, Pepper and Olive Oil',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                'Steps',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.deepOrangeAccent),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.deepOrange,
                          Colors.orange,
                          Colors.orangeAccent,
                        ]),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.format_list_numbered),
                          Expanded(
                            child: Text(
                              'Wash, peel and cut the asparagus',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.deepOrange,
                          Colors.orange,
                          Colors.orangeAccent,
                        ]),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.format_list_numbered),
                          Expanded(
                            child: Text(
                              'Cook in salted water',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.deepOrange,
                          Colors.orange,
                          Colors.orangeAccent,
                        ]),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.format_list_numbered),
                          Expanded(
                            child: Text(
                              'Salt and pepper the asparagus',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.deepOrange,
                          Colors.orange,
                          Colors.orangeAccent,
                        ]),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.format_list_numbered),
                          Expanded(
                            child: Text(
                              'Roast the pine nuts',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.deepOrange,
                          Colors.orange,
                          Colors.orangeAccent,
                        ]),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.format_list_numbered),
                          Expanded(
                            child: Text(
                              'Halve the tomatoes',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.deepOrange,
                          Colors.orange,
                          Colors.orangeAccent,
                        ]),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.format_list_numbered),
                          Expanded(
                            child: Text(
                              'Mix with asparagus, salad and dressing',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.deepOrange,
                          Colors.orange,
                          Colors.orangeAccent,
                        ]),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.format_list_numbered),
                          Expanded(
                            child: Text(
                              'Serve with Baguette',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
