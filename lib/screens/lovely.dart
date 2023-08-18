//import 'dart:async';
//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:mealapplication/homepage.dart';
import 'package:mealapplication/modules/floatingbutton.dart';

//import 'package:mealapplication/widgets/categoryscreen.dart';

//void main() => runApp(LovelyPage());

class LovelyPage extends StatefulWidget {
  LovelyPageState createState() => LovelyPageState();
}

class LovelyPageState extends State<LovelyPage> {
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
            'Delicious Orange Mousse',
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
            Image.asset('images/li2.jpg'),
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
                      '4 Sheets of Gelatine',
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
                      '150ml Orange Juice',
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
                      '80g Sugar',
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
                      '300g Yoghurt',
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
                      '200g Cream',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
                      'Orange Peel',
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
                              'Dissolve gelatine in pot',
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
                              'Add orange juice and sugar',
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
                            'Take pot off the stove',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                            'Add 2 tablespoons of yoghurt',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                            'Stir gelatin under remaining yoghurt',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                            'Whip the cream and lift it under die orange mass',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                            'Cool down again for at least 4 hours',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                            'Serve with orange peel',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
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
