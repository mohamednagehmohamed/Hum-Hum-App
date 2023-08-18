//import 'dart:async';
//import 'dart:math';

import 'package:another_flushbar/flushbar.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:mealapplication/homepage.dart';

import 'package:mealapplication/modules/floatingbutton.dart';
import 'package:mealapplication/modules/showinterstial.dart';


import 'package:mealapplication/screens/baked.dart';
import 'package:mealapplication/screens/banana.dart';
import 'package:mealapplication/screens/filters.dart';

import 'package:mealapplication/screens/herp.dart';
import 'package:mealapplication/screens/pesto.dart';

import 'package:mealapplication/screens/porridge.dart';
import 'package:mealapplication/screens/smashed.dart';
import 'package:page_transition/page_transition.dart';

import 'package:shared_preferences/shared_preferences.dart';
//import 'package:mealapplication/widgets/categoryscreen.dart';

//void main() => runApp(Pregnant());

class Pregnant extends StatefulWidget {
  @override
  PregnantState createState() => PregnantState();
}

class PregnantState extends State<Pregnant> {
  static bool pooridgefav = false;
  static bool bananafav = false;
  static bool smashedfav = false;
  static bool bakedfav = false;
  static bool pestofav = false;
  static bool herpfav = false;
  bool isplaying = false;
  late ConfettiController _confettiController;
 // late RiveAnimationController rivecontroller;
  setpooridge() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('pooridge', pooridgefav);
  }

  setbanana() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('banana', bananafav);
  }

  setsmashed() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('smashed', smashedfav);
  }

  setbaked() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('baked', bakedfav);
  }

  setpesto() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('pesto', pestofav);
  }

  setherp() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('herp', herpfav);
  }

  showflushbaradd() async {
    await Flushbar(
      textDirection: HomePageState.arabicvalue == false
          ? TextDirection.ltr
          : TextDirection.rtl,
      title: HomePageState.arabicvalue == false
          ? 'Hum Hum Application'
          : 'تطبيق هم هم',
      message: HomePageState.arabicvalue == false
          ? 'You have been added to favourites'
          : 'لقد تمت الاضافة الي المفضلة',
      icon: Icon(
        Icons.info_rounded,
        color: Colors.green,
      ),
      duration: Duration(seconds: 3),
    ).show(context);
  }

  showflushbardelete() async {
    await Flushbar(
      backgroundColor: Colors.yellow,
      textDirection: HomePageState.arabicvalue == false
          ? TextDirection.ltr
          : TextDirection.rtl,
      title: HomePageState.arabicvalue == false
          ? 'Hum Hum Application'
          : 'تطبيق هم هم',
      titleColor: Colors.black,
      message: HomePageState.arabicvalue == false
          ? 'It has been removed from your favourites'
          : 'لقد تم الحذف من المفضلة',
      messageColor: Colors.black,
      icon: Icon(
        Icons.info_rounded,
        color: Colors.red,
      ),
      duration: Duration(seconds: 3),
    ).show(context);
  }

  /*showload() {
    RiveAnimation.asset(
      'images/916-1812-loading-.riv',
      fit: BoxFit.contain,
      controllers: [rivecontroller],
    );
  }*/

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(duration: Duration(seconds: 2));
    //controller = MenuController(vsync: this);
   /* rivecontroller = OneShotAnimation(
      'load',
      autoplay: false,
      onStop: () => setState(() => isplaying = false),
      onStart: () => setState(() => isplaying = true),
    );*/
    if (FiltersState.allvalue == true) {
      FiltersState.veganvalue = true;
      FiltersState.notvegetraintvalue = true;
      // FiltersState.veganactive = Colors.grey;
      // FiltersState.notvegetrainctive = Colors.grey;
    }
    ShowInterstial.loadinteristial();
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

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
                child: Icon(Icons.home),
                label: 'Home',
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: HomePage(),
                            type: PageTransitionType.bottomToTop));
                  });
                }),
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
                ? 'Pregnant Meals '
                : 'وجبات الحوامل ',
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
                color: Colors.purple
                /*gradient: LinearGradient(
                    colors: [Colors.purple, Colors.deepPurple, Colors.purple])*/
                ),
          ),
        ),
        body: LiquidPullToRefresh(
          color: Colors.purple,
          backgroundColor: Colors.orange,
          onRefresh: handeltorefresh,
          showChildOpacityTransition: false,
          animSpeedFactor: 2,
          child: ListView(
            children: [
              Column(
                children: [
                  FiltersState.veganvalue == true
                      ? Column(
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                    child: Image.asset(
                                      'images/Apple-and-Cinnamon-Porridge.jpg',
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    )),
                                Positioned(
                                  bottom: 20,
                                  right: 10,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.6)),
                                    child: Text(
                                      HomePageState.arabicvalue == false
                                          ? 'Apple Porridge'
                                          : 'عصيدة التفاح',
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                      softWrap: true,
                                      overflow: TextOverflow.fade,
                                    ),
                                  ),
                                ),
                                Positioned(
                                    bottom: 20,
                                    left: 5,
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            pooridgefav = !pooridgefav;
                                            setpooridge();
                                            pooridgefav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            pooridgefav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: pooridgefav == false
                                              ? Colors.grey
                                              : Colors.yellow,
                                          size: 50,
                                        ))),
                                Align(
                                  alignment: Alignment.center,
                                  child: ConfettiWidget(
                                    confettiController: _confettiController,
                                    blastDirectionality:
                                        BlastDirectionality.explosive,
                                    emissionFrequency: 1,
                                    shouldLoop: false,
                                    colors: [
                                      Colors.red,
                                      Colors.green,
                                      Colors.blue,
                                      Colors.pink,
                                      Colors.orange,
                                      Colors.purple
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.timer),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  HomePageState.arabicvalue == false
                                      ? '15 min'
                                      : '15 دقيقة ',
                                  style: TextStyle(
                                      color: HomePageState.darkmode == false
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(Icons.shopping_bag),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  HomePageState.arabicvalue == false
                                      ? 'Simple'
                                      : 'بسيط ',
                                  style: TextStyle(
                                      color: HomePageState.darkmode == false
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(Icons.money),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  HomePageState.arabicvalue == false
                                      ? 'Pricy'
                                      : 'ثمنا',
                                  style: TextStyle(
                                      color: HomePageState.darkmode == false
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 170,
                              //height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.black),
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            child: Porridge(),
                                            type: PageTransitionType
                                                .leftToRight));
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Ingredients'
                                        : ' مكونات ',
                                    style: TextStyle(
                                        color: Colors.lightBlueAccent,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        backgroundColor: Colors.black),
                                  )),
                            ),
                          ],
                        )
                      : Container(),
                  SizedBox(
                    height: 25,
                  ),
                  FiltersState.veganvalue == true
                      ? Column(
                          children: [
                            Stack(
                              children: [
                                InteractiveViewer(
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                      ),
                                      child: Image.asset(
                                        'images/Banana-Oat-Breakfast-Smoothie.jpg',
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      )),
                                ),
                                Positioned(
                                  bottom: 20,
                                  right: 10,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.6)),
                                    child: Text(
                                      HomePageState.arabicvalue == false
                                          ? 'Banana Smoothie with Oats'
                                          : 'سموثي الموز مع الشوفان',
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                      softWrap: true,
                                      overflow: TextOverflow.fade,
                                    ),
                                  ),
                                ),
                                Positioned(
                                    bottom: 20,
                                    left: 5,
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            bananafav = !bananafav;
                                            setbanana();
                                            bananafav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            bananafav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: bananafav == false
                                              ? Colors.grey
                                              : Colors.yellow,
                                          size: 50,
                                        ))),
                                Align(
                                  alignment: Alignment.center,
                                  child: ConfettiWidget(
                                    confettiController: _confettiController,
                                    blastDirectionality:
                                        BlastDirectionality.explosive,
                                    emissionFrequency: 1,
                                    shouldLoop: false,
                                    colors: [
                                      Colors.red,
                                      Colors.green,
                                      Colors.blue,
                                      Colors.pink,
                                      Colors.orange,
                                      Colors.purple
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.timer),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  HomePageState.arabicvalue == false
                                      ? '5 min'
                                      : '5 دقيقة ',
                                  style: TextStyle(
                                      color: HomePageState.darkmode == false
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(Icons.shopping_bag),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  HomePageState.arabicvalue == false
                                      ? 'Simple'
                                      : 'بسيط ',
                                  style: TextStyle(
                                      color: HomePageState.darkmode == false
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(Icons.money),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  HomePageState.arabicvalue == false
                                      ? 'Pricy'
                                      : 'ثمنا',
                                  style: TextStyle(
                                      color: HomePageState.darkmode == false
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 170,
                              //height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.black),
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            child: Banana(),
                                            type: PageTransitionType
                                                .leftToRight));
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Ingredients'
                                        : ' مكونات ',
                                    style: TextStyle(
                                        color: Colors.lightBlueAccent,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        backgroundColor: Colors.black),
                                  )),
                            ),
                          ],
                        )
                      : Container(),
                  SizedBox(
                    height: 25,
                  ),
                  FiltersState.veganvalue == true
                      ? Column(
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                    child: Image.asset(
                                      'images/img_0780.jpg',
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    )),
                                Positioned(
                                  bottom: 20,
                                  right: 10,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.6)),
                                    child: Text(
                                      HomePageState.arabicvalue == false
                                          ? ' Smashed Avocado and Tomato on Toast'
                                          : 'الأفوكادو المهروس والطماطم على الخبز المحمص',
                                      style: TextStyle(
                                         fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                      softWrap: true,
                                      overflow: TextOverflow.fade,
                                    ),
                                  ),
                                ),
                                Positioned(
                                    bottom: 20,
                                    left: 5,
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            isplaying = true;
                                            smashedfav = !smashedfav;
                                            setsmashed();
                                            smashedfav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            smashedfav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: smashedfav == false
                                              ? Colors.grey
                                              : Colors.yellow,
                                          size: 50,
                                        ))),
                                Align(
                                  alignment: Alignment.center,
                                  child: ConfettiWidget(
                                    confettiController: _confettiController,
                                    blastDirectionality:
                                        BlastDirectionality.explosive,
                                    emissionFrequency: 1,
                                    shouldLoop: false,
                                    colors: [
                                      Colors.red,
                                      Colors.green,
                                      Colors.blue,
                                      Colors.pink,
                                      Colors.orange,
                                      Colors.purple
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.timer),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  HomePageState.arabicvalue == false
                                      ? '25 min'
                                      : '25 دقيقة ',
                                  style: TextStyle(
                                      color: HomePageState.darkmode == false
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(Icons.shopping_bag),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  HomePageState.arabicvalue == false
                                      ? 'Simple'
                                      : 'بسيط ',
                                  style: TextStyle(
                                      color: HomePageState.darkmode == false
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(Icons.money),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  HomePageState.arabicvalue == false
                                      ? 'Pricy'
                                      : 'ثمنا',
                                  style: TextStyle(
                                      color: HomePageState.darkmode == false
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 170,
                              //height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.black),
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            child: Smashed(),
                                            type: PageTransitionType.fade));
                                            ShowInterstial.showinterstialid();
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Ingredients'
                                        : ' مكونات ',
                                    style: TextStyle(
                                        color: Colors.lightBlueAccent,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        backgroundColor: Colors.black),
                                  )),
                            ),
                          ],
                        )
                      : Container(),
                  SizedBox(
                    height: 25,
                  ),
                  FiltersState.veganvalue == true
                      ? Column(
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                    child: Image.asset(
                                      'images/garlic-confit-toast-6506890-msl0918_horiz.jpg',
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    )),
                                Positioned(
                                  bottom: 20,
                                  right: 10,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.6)),
                                    child: Text(
                                      HomePageState.arabicvalue == false
                                          ? 'Toast with Baked Tomatoes'
                                          : 'توست بالطماطم المشوية',
                                      style: TextStyle(
                                         fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                      softWrap: true,
                                      overflow: TextOverflow.fade,
                                    ),
                                  ),
                                ),
                                Positioned(
                                    bottom: 20,
                                    left: 5,
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            bakedfav = !bakedfav;
                                            setbaked();
                                            bakedfav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            bakedfav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                               // bakedfav == false
                                               // ? null
                                                //: ShowInterstial.showinterstialid();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: bakedfav == false
                                              ? Colors.grey
                                              : Colors.yellow,
                                          size: 50,
                                        ))),
                                Align(
                                  alignment: Alignment.center,
                                  child: ConfettiWidget(
                                    confettiController: _confettiController,
                                    blastDirectionality:
                                        BlastDirectionality.explosive,
                                    emissionFrequency: 1,
                                    shouldLoop: false,
                                    colors: [
                                      Colors.red,
                                      Colors.green,
                                      Colors.blue,
                                      Colors.pink,
                                      Colors.orange,
                                      Colors.purple
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.timer),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  HomePageState.arabicvalue == false
                                      ? '5 min'
                                      : '5 دقيقة ',
                                  style: TextStyle(
                                      color: HomePageState.darkmode == false
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(Icons.shopping_bag),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  HomePageState.arabicvalue == false
                                      ? 'Simple'
                                      : 'بسيط ',
                                  style: TextStyle(
                                      color: HomePageState.darkmode == false
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(Icons.money),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  HomePageState.arabicvalue == false
                                      ? 'Pricy'
                                      : 'ثمنا',
                                  style: TextStyle(
                                      color: HomePageState.darkmode == false
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 170,
                              //height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.black),
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            child: Baked(),
                                            type: PageTransitionType
                                                .leftToRight));
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Ingredients'
                                        : ' مكونات ',
                                    style: TextStyle(
                                        color: Colors.lightBlueAccent,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        backgroundColor: Colors.black),
                                  )),
                            ),
                          ],
                        )
                      : Container(),
                  SizedBox(
                    height: 25,
                  ),
                  FiltersState.notvegetraintvalue == true
                      ? Column(
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                    child: Image.asset(
                                      'images/Creamy-Pesto-Chicken-Pasta-close-skillet.jpg',
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    )),
                                Positioned(
                                  bottom: 20,
                                  right: 10,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.6)),
                                    child: Text(
                                      HomePageState.arabicvalue == false
                                          ? 'Chicken Pesto Pasta'
                                          : 'باستا دجاج بالبيستو',
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                      softWrap: true,
                                      overflow: TextOverflow.fade,
                                    ),
                                  ),
                                ),
                                Positioned(
                                    bottom: 20,
                                    left: 5,
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            pestofav = !pestofav;
                                            setpesto();
                                            pestofav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            pestofav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: pestofav == false
                                              ? Colors.grey
                                              : Colors.yellow,
                                          size: 50,
                                        ))),
                                Align(
                                  alignment: Alignment.center,
                                  child: ConfettiWidget(
                                    confettiController: _confettiController,
                                    blastDirectionality:
                                        BlastDirectionality.explosive,
                                    emissionFrequency: 1,
                                    shouldLoop: false,
                                    colors: [
                                      Colors.red,
                                      Colors.green,
                                      Colors.blue,
                                      Colors.pink,
                                      Colors.orange,
                                      Colors.purple
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.timer),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  HomePageState.arabicvalue == false
                                      ? '25 min'
                                      : '25 دقيقة ',
                                  style: TextStyle(
                                      color: HomePageState.darkmode == false
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(Icons.shopping_bag),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  HomePageState.arabicvalue == false
                                      ? 'Simple'
                                      : 'بسيط ',
                                  style: TextStyle(
                                      color: HomePageState.darkmode == false
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(Icons.money),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  HomePageState.arabicvalue == false
                                      ? 'Pricy'
                                      : 'ثمنا',
                                  style: TextStyle(
                                      color: HomePageState.darkmode == false
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 170,
                              //height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.black),
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            child: Pesto(),
                                            type: PageTransitionType
                                                .leftToRight));
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Ingredients'
                                        : ' مكونات ',
                                    style: TextStyle(
                                        color: Colors.lightBlueAccent,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        backgroundColor: Colors.black),
                                  )),
                            ),
                          ],
                        )
                      : Container(),
                  SizedBox(
                    height: 25,
                  ),
                  FiltersState.veganvalue == true
                      ? Column(
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                    child: Image.asset(
                                      'images/omelette-4fe3f28.jpg',
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    )),
                                Positioned(
                                  bottom: 20,
                                  right: 10,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.6)),
                                    child: Text(
                                      HomePageState.arabicvalue == false
                                          ? 'Herb Omelette'
                                          : 'عشب أومليت',
                                      style: TextStyle(
                                       fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                      softWrap: true,
                                      overflow: TextOverflow.fade,
                                    ),
                                  ),
                                ),
                                Positioned(
                                    bottom: 20,
                                    left: 5,
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            herpfav = !herpfav;
                                            setherp();
                                            herpfav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            herpfav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                            //   herpfav == false
                                            //    ? null
                                              //  : ShowInterstial.showinterstialid();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: herpfav == false
                                              ? Colors.grey
                                              : Colors.yellow,
                                          size: 50,
                                        ))),
                                Align(
                                  alignment: Alignment.center,
                                  child: ConfettiWidget(
                                    confettiController: _confettiController,
                                    blastDirectionality:
                                        BlastDirectionality.explosive,
                                    emissionFrequency: 1,
                                    shouldLoop: false,
                                    colors: [
                                      Colors.red,
                                      Colors.green,
                                      Colors.blue,
                                      Colors.pink,
                                      Colors.orange,
                                      Colors.purple
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.timer),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  HomePageState.arabicvalue == false
                                      ? '10 min'
                                      : '10 دقيقة ',
                                  style: TextStyle(
                                      color: HomePageState.darkmode == false
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(Icons.shopping_bag),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  HomePageState.arabicvalue == false
                                      ? 'Simple'
                                      : 'بسيط ',
                                  style: TextStyle(
                                      color: HomePageState.darkmode == false
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(Icons.money),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  HomePageState.arabicvalue == false
                                      ? 'Pricy'
                                      : 'ثمنا',
                                  style: TextStyle(
                                      color: HomePageState.darkmode == false
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 170,
                              //height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.black),
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            child: Herp(),
                                            type: PageTransitionType
                                                .leftToRight));
                                                ShowInterstial.showinterstialid();
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Ingredients'
                                        : ' مكونات ',
                                    style: TextStyle(
                                        color: Colors.lightBlueAccent,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        backgroundColor: Colors.black),
                                  )),
                            ),
                          ],
                        )
                      : Container(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
