//import 'dart:async';
//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:mealapplication/homepage.dart';
import 'package:mealapplication/modules/floatingbutton.dart';

//void main() => runApp(SalmonPage());

class SalmonPage extends StatefulWidget {
  SalmonPageState createState() => SalmonPageState();
}

class SalmonPageState extends State<SalmonPage> {
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
                ? 'Salad with Smoked Salmon'
                : 'سلطة مع سلمون مدخن',
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
                child: InteractiveViewer(
                  scaleEnabled: true,
                  child: Hero(
                    tag: 'salmon',
                    child: Image.asset(
                      'images/sal.jpg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
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
                                ? 'Arugula'
                                : 'جرجير',
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
                                ? 'Lambs Lettuce'
                                : 'خس الخروف',
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
                                ? 'Parsley'
                                : 'بقدونس',
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
                                ? 'Fennel'
                                : 'الشمرة',
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
                                ? '200g Smoked Salmon'
                                : '200 جرام سلمون مدخن',
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
                                ? 'Mustard'
                                : 'خردل',
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
                                ? 'Balsamic Vinegar'
                                : 'الخل البلسمي',
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
                            //color: Colors.lightBlueAccent,
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15))),
                        child: ListTile(
                          title: Text(
                            HomePageState.arabicvalue == false
                                ? 'Olive Oil'
                                : 'زيت الزيتون',
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
                                ? 'Salt and Pepper'
                                : 'ملح وفلفل',
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
                HomePageState.arabicvalue==false?
                'Steps':'خطوات',
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
                                ? 'Wash and cut salad and herbs'
                                : 'يغسل ويقطع السلطة والأعشاب',
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
                                ? 'Dice the salmon'
                                : 'قطعي السلمون إلى مكعبات',
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
                                ? 'Process mustard, vinegar and olive oil into a dessing'
                                : 'اخلطي الخردل والخل وزيت الزيتون في صوص',
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
                                ? 'Prepare the salad'
                                : 'تحضير السلطة',
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
                                ? 'Add salmon cubes and dressing'
                                : 'أضف مكعبات السلمون والصلصة',
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
    );
  }
}
