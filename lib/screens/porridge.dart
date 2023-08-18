//import 'dart:async';
//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:mealapplication/homepage.dart';
import 'package:mealapplication/modules/floatingbutton.dart';


//import 'package:mealapplication/widgets/categoryscreen.dart';

//void main() => runApp(Porridge());

class Porridge extends StatefulWidget {
  @override
  PorridgeState createState() => PorridgeState();
}

class PorridgeState extends State<Porridge> {
  Future<void> handeltorefresh() async {
    return await Future.delayed(Duration(seconds: 2));
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
                ? 'Apple Porridge'
                : 'عصيدة التفاح',
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
        body: LiquidPullToRefresh(
          color: Colors.purple,
          backgroundColor: Colors.orange,
          onRefresh: handeltorefresh,
          showChildOpacityTransition: true,
          animSpeedFactor: 2,
          child: ListView(
            children: [
              InteractiveViewer(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'images/Apple-and-Cinnamon-Porridge.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ))),
              SizedBox(
                height: 8,
              ),
              Center(
                child: Text(
                  HomePageState.arabicvalue == false
                      ? 'Ingredients'
                      : ' مكونات ',
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
              Card(
                color: Colors.purpleAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              // color: Colors.lightBlueAccent,
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: ListTile(
                            title: Text(
                              HomePageState.arabicvalue == false
                                  ? '200ml semi-skimmed milk'
                                  : '200 مل حليب نصف منزوع الدسم',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.flare_rounded,
                              color: Colors.red,
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              //   color: Colors.lightBlueAccent,
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: ListTile(
                            title: Text(
                              HomePageState.arabicvalue == false
                                  ? '50g porridge oats'
                                  : '50 جرام من الشوفان',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.flare_rounded,
                              color: Colors.red,
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              // color: Colors.lightBlueAccent,
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: ListTile(
                            title: Text(
                              HomePageState.arabicvalue == false
                                  ? '1 dessert apple, diced'
                                  : '1 تفاحة حلوة ، مقطعة إلى مكعبات',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.flare_rounded,
                              color: Colors.red,
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              // color: Colors.lightBlueAccent,
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: ListTile(
                            title: Text(
                              HomePageState.arabicvalue == false
                                  ? 'Cinnamon (1 pinch)'
                                  : 'قرفة (رشة)',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.flare_rounded,
                              color: Colors.red,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  HomePageState.arabicvalue == false ? 'Steps' : 'خطوات',
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
              Card(
                color: Colors.deepPurpleAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: ListTile(
                            title: Text(
                              HomePageState.arabicvalue == false
                                  ? 'Pour the milk, porridge oats, and dessert apple into a saucepan and bring to the boil.'
                                  : 'يُسكب الحليب وعصيدة الشوفان والتفاح المُحلى في قدر ويُغلى المزيج.',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.format_list_numbered,
                              color: Colors.black,
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: ListTile(
                            title: Text(
                              HomePageState.arabicvalue == false
                                  ? 'Lower the temperature and simmer, stirring frequently'
                                  : 'خففي درجة الحرارة واتركيها على نار هادئة مع التحريك المتكرر',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.format_list_numbered,
                              color: Colors.black,
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: ListTile(
                            title: Text(
                              HomePageState.arabicvalue == false
                                  ? 'Serve and then sprinkle the pinch of cinnamon over the porridge'
                                  : 'قدميه ثم رشي القليل من القرفة على العصيدة',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.format_list_numbered,
                              color: Colors.black,
                            ),
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
