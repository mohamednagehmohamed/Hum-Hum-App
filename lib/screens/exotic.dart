//import 'dart:async';
//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mealapplication/homepage.dart';
import 'package:mealapplication/modules/showinterstial.dart';
import 'package:mealapplication/screens/filters.dart';

import 'package:mealapplication/screens/maklopa.dart';
import 'package:mealapplication/screens/manakish.dart';
import 'package:mealapplication/screens/shawerma.dart';
import 'package:mealapplication/screens/shish.dart';
import 'package:mealapplication/screens/syrfalafel.dart';
import 'package:mealapplication/screens/yabrak.dart';
import 'package:page_transition/page_transition.dart';
//import 'package:mealapplication/modules/category.dart';
//import 'package:mealapplication/widgets/categoryitem.dart';
//import 'package:mealapplication/widgets/categoryscreen.dart';
//import 'dart:async';
//import 'dart:math';

import 'package:another_flushbar/flushbar.dart';
import 'package:confetti/confetti.dart';

import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

import 'package:mealapplication/modules/floatingbutton.dart';

import 'package:shared_preferences/shared_preferences.dart';
//import 'package:mealapplication/widgets/categoryscreen.dart';

//void main() => runApp(ExoticPage());

class ExoticPage extends StatefulWidget {
  @override
  ExoticPageState createState() => ExoticPageState();
}

class ExoticPageState extends State<ExoticPage> {
  static bool shawrmafav = false;
  static bool manakishfav = false;
  static bool syrflafelfav = false;
  static bool yabrakfav = false;
  static bool maklopafav = false;
  static bool shishfav = false;
  late ConfettiController _confettiController;
  setshawrma() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('shawrma', shawrmafav);
  }

  setmanakish() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('manakish', manakishfav);
  }

  setsyrflafel() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('syrflafel', syrflafelfav);
  }

  setyabrak() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('yabrak', yabrakfav);
  }

  setmaklopa() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('maklopa', maklopafav);
  }

  setshish() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('shishfav', shishfav);
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

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(duration: Duration(seconds: 2));
    //controller = MenuController(vsync: this);
    if (FiltersState.allvalue == true) {
      FiltersState.veganvalue = true;
      FiltersState.notvegetraintvalue = true;
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
                ? 'syrian meals 🥘'
                : 'وجبات سورية🥘',
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
                gradient: LinearGradient(
                    colors: [Colors.purple, Colors.deepPurple, Colors.purple])),
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
                                      'images/shawerma.jpg',
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
                                          ? 'Syrian Shawarma'
                                          : 'شاورما سوري',
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
                                            shawrmafav = !shawrmafav;
                                            setshawrma();
                                            shawrmafav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            shawrmafav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: shawrmafav == false
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
                                Expanded(
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? '1 hour & 30 minutes'
                                        : 'ساعة و 30 دقيقة',
                                    style: TextStyle(
                                        color: HomePageState.darkmode == false
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
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
                                      : 'بسيطة ',
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
                                Expanded(
                                  child: Text(
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
                                            child: Shawerma(),
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
                                        'images/Manakish-Cheese-Zaatar-4.jpg',
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
                                          ? 'Manakish'
                                          : 'مناقيش',
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
                                            manakishfav = !manakishfav;
                                            setmanakish();
                                            manakishfav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            manakishfav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: manakishfav == false
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
                                Expanded(
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? '2 hours 12 minutes'
                                        : 'ساعتان و 12 دقيقة',
                                    style: TextStyle(
                                        color: HomePageState.darkmode == false
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
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
                                      ? 'difficult'
                                      : 'صعبة ',
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
                                            child: Manakish(),
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
                                      'images/syrian flafel.jpg',
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
                                          ? 'Syrian falafel'
                                          : 'فلافل سوري',
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
                                            syrflafelfav = !syrflafelfav;
                                            setsyrflafel();
                                            syrflafelfav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            syrflafelfav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: syrflafelfav == false
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
                                Expanded(
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? '35 Minutes + Overnight Soaking'
                                        : '35 دقيقة + نقع طوال الليل',
                                    style: TextStyle(
                                        color: HomePageState.darkmode == false
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
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
                                            child: SyrFlafel(),
                                            type: PageTransitionType.fade));
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
                                      'images/Yabrak-stuffed-grape-leaves.jpg',
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
                                          ? 'Yabrak'
                                          : 'يبراك',
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
                                            yabrakfav = !yabrakfav;
                                            setyabrak();
                                            yabrakfav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            yabrakfav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: yabrakfav == false
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
                                Expanded(
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? '1 hour 20 minutes'
                                        : '1 ساعة و 20 دقيقة',
                                    style: TextStyle(
                                        color: HomePageState.darkmode == false
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
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
                                            child: Yabrak(),
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
                                      'images/maklopa.jpg',
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
                                          ? 'Al-Maglouba'
                                          : 'المقلوبة',
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
                                            maklopafav = !maklopafav;
                                            setmaklopa();
                                            maklopafav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            maklopafav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: maklopafav == false
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
                                Expanded(
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? '1 hour 45 minutes'
                                        : 'ساعة و 45 دقيقة',
                                    style: TextStyle(
                                        color: HomePageState.darkmode == false
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
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
                                            child: Maklopa(),
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
                                      'images/Shish_barak.jpg',
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
                                          ? 'Shish Barak'
                                          : 'شيش براك',
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
                                            shishfav = !shishfav;
                                            setshish();
                                            shishfav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            shishfav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: shishfav == false
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
                                Expanded(
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? '2 hrs 30 mins'
                                        : 'ساعتان و 30 دقيقة',
                                    style: TextStyle(
                                        color: HomePageState.darkmode == false
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
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
                                            child: Shish(),
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
                      : Container()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
