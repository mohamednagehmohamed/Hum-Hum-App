//import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:mealapplication/modules/floatingbutton.dart';
import 'package:mealapplication/modules/mybunner.dart';



import 'package:shared_preferences/shared_preferences.dart';

import '../homepage.dart';

/*void main() {
  runApp(Filters());
}*/

class Filters extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FiltersState();
  }
}

class FiltersState extends State<Filters> {
  static bool veganvalue = false;
  static bool notvegetraintvalue = false;
  static bool allvalue = false;
  // static Color veganactive = Colors.green;
  //static Color vegantrack = Colors.grey;
  // static Color notvegetrainctive = Colors.green;
  // static Color notvegetraintrack = Colors.grey;
  setvegan() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('vegan', veganvalue);
  }

  setnotvegetrain() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('notvegetrain', notvegetraintvalue);
  }

  setall() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('all', allvalue);
  }

 

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
              HomePageState.arabicvalue == false
                  ? 'Filter Meals'
                  : ' تصفية الوجبات',
              style: TextStyle(
                fontSize: 22,
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
                    Colors.purple,
                    Colors.deepPurple,
                    Colors.purple
                  ])),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  title: Text(
                    HomePageState.arabicvalue == false ? 'isvegan' : 'نباتي',
                    style: TextStyle(
                        fontSize: 25,
                        color: HomePageState.darkmode == false
                            ? Colors.black
                            : Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Image.asset('images/icons8-checklist.gif'),
                  trailing: CupertinoSwitch(
                      activeColor: Colors.green,
                      trackColor: Colors.grey,
                      value: veganvalue,
                      onChanged: (value) {
                        setState(() {
                          veganvalue = value;
                          notvegetraintvalue = false;
                          allvalue = false;
                          setvegan();
                        });
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    HomePageState.arabicvalue == false
                        ? 'not_vegetrain'
                        : 'غير نباتي',
                    style: TextStyle(
                        fontSize: 25,
                        color: HomePageState.darkmode == false
                            ? Colors.black
                            : Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Image.asset('images/icons8-checklist.gif'),
                  trailing: CupertinoSwitch(
                      activeColor: Colors.green,
                      trackColor: Colors.grey,
                      value: notvegetraintvalue,
                      onChanged: (value) {
                        setState(() {
                          notvegetraintvalue = value;
                          veganvalue = false;
                          allvalue = false;
                          setnotvegetrain();
                        });
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    HomePageState.arabicvalue == false
                        ? 'All Meals'
                        : 'كل الوجبات',
                    style: TextStyle(
                        fontSize: 25,
                        color: HomePageState.darkmode == false
                            ? Colors.black
                            : Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Image.asset('images/icons8-checklist.gif'),
                  trailing: CupertinoSwitch(
                      activeColor: Colors.green,
                      trackColor: Colors.grey,
                      value: allvalue,
                      onChanged: (value) {
                        setState(() {
                          allvalue = value;
                          veganvalue = false;
                          notvegetraintvalue = false;
                          // notvegetraintrack = Colors.grey;
                          //vegantrack = Colors.grey;
                          setall();
                        });
                      }),
                ),
                SizedBox(height: 50,),
                MyBunner()
              ],
            ),
          )),
    );
  }
}
