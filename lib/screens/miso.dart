//import 'dart:async';
//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:mealapplication/homepage.dart';
import 'package:mealapplication/modules/floatingbutton.dart';

//import 'package:mealapplication/widgets/categoryscreen.dart';

//void main() => runApp(Miso());

class Miso extends StatefulWidget {
  @override
  MisoState createState() => MisoState();
}

class MisoState extends State<Miso> {
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
                ? 'Sweet miso steak with ramen'
                : 'شريحة لحم ميسو حلوة مع رامين',
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
                        'images/sweet-miso-steak-with-ramen-14778-1.jpg',
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
                                  ? '100g miso paste'
                                  : '100 جرام ميسو معجون',
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
                                  ? '1/3 cup (80ml) mirin'
                                  : '1/3 كوب (80 مل) ميرين',
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
                                  ? '1/3 firmly packed cup (80g) brown sugar'
                                  : '1/3 كوب سكر بني معبأ بإحكام (80 جم)',
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
                                  ? '500g beef rump, sliced'
                                  : '500 جرام ردف بقري مقطع إلى شرائح',
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
                                  ? '270g ramen noodles'
                                  : '270 جرام نودلز رامين',
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
                                  ? '1 tablespoon sunflower oil'
                                  : '1 ملعقة طعام زيت عباد الشمس',
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
                                  ? '350g mixed Asian mushrooms'
                                  : '350 جرام فطر آسيوي مشكل',
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
                      padding: EdgeInsets.only(top: 10, bottom: 10),
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
                                  ? '250g snow peas, blanched, refreshed, sliced on an angle'
                                  : '250 غ من البازلاء snow مقشرة ومنتعشة ومقطعة إلى شرائح',
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
                      padding: EdgeInsets.only(top: 10, bottom: 10),
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
                                  ? '2 spring onions, thinly sliced'
                                  : '2 بصل أخضر مقطع ناعماً',
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
                                  ? 'Stir miso, mirin and sugar in a bowl. Toss with beef and marinate for 15 minutes'
                                  : 'يقلب الميسو والميرين والسكر في وعاء. يقلب مع اللحم البقري وينقع لمدة 15 دقيقة',
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
                                  ? 'Cook noodles according to packet instructions, then drain'
                                  : 'تُطهى النودلز وفقًا لتعليمات العبوة ، ثم تُصفّى',
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
                                  ? 'Heat oil in a large non-stick frypan over medium-high heat. Add the mushrooms and cook, tossing, for 3-4 minutes until softened. Remove from pan and set aside. Add beef and marinade to the pan and cook, turning beef, for 5-6 minutes until browned and lightly caramelised. Return mushrooms to the pan with noodles and snow peas, then toss to combine. Divide among bowls and top with spring onion'
                                  : 'سخني الزيت في مقلاة كبيرة غير لاصقة على نار متوسطة إلى عالية. يُضاف الفطر ويُطهى لمدة 3-4 دقائق حتى ينضج. ثم ترفع من المقلاة وتوضع جانبا. يُضاف اللحم البقري والتتبيلة إلى المقلاة ويُطهى مع تقليب اللحم لمدة 5-6 دقائق حتى يتحول لونه إلى البني ويصبح مكرمل قليلاً. يُعاد الفطر إلى المقلاة مع النودلز والبازلاء ، ثم يُمزج جيدًا. يقسم بين الأوعية ويغطي بالبصل الأخضر',
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
