//import 'dart:async';
//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:mealapplication/homepage.dart';
import 'package:mealapplication/modules/floatingbutton.dart';

//void main() => runApp(WinnerPage());

class WinnerPage extends StatefulWidget {
  WinnerPageState createState() => WinnerPageState();
}

class WinnerPageState extends State<WinnerPage> {
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
            'Wiener Schnitzel',
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
                gradient: LinearGradient(
                    colors: [Colors.purple, Colors.deepPurple, Colors.purple])),
          ),
        ),
        body: ListView(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'images/win.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                )),
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
                      '8 Veal Cutlets',
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
                      '4 Eggs',
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
                      '200g Bread Crumbs',
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
                      '100g Flour',
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
                      '300ml Butter',
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
                      '100g Vegetable Oil',
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
                      'Salt',
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
                      'Lemon Slices',
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
                              'Tenderize the veal to about 2–4mm, and salt on both sides.',
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
                              'On a flat plate, stir the eggs briefly with a fork.',
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
                            'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
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
                            'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
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
                            'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
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
                            'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.',
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
