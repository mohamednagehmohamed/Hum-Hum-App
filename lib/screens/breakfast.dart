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


import 'package:mealapplication/screens/chila.dart';
import 'package:mealapplication/screens/filters.dart';

import 'package:mealapplication/screens/granola.dart';
import 'package:mealapplication/screens/handpies.dart';

import 'package:mealapplication/screens/salmon.dart';
import 'package:mealapplication/screens/scraegg.dart';
import 'package:mealapplication/screens/shakshoka.dart';
import 'package:page_transition/page_transition.dart';

import 'package:shared_preferences/shared_preferences.dart';
//import 'package:mealapplication/widgets/categoryscreen.dart';

//void main() => runApp(BreakfastPage());

class BreakfastPage extends StatefulWidget {
  @override
  BreakfastPageState createState() => BreakfastPageState();
}

class BreakfastPageState extends State<BreakfastPage> {
  static bool salmonfav = false;
  static bool scraeggfav = false;
  static bool handpiesfav = false;
  static bool chilafav = false;
  static bool shakshokafav = false;
  static bool granolafav = false;

  bool isplaying = false;
  late ConfettiController _confettiController;
  //late RiveAnimationController rivecontroller;
  setsalmon() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('salmon', salmonfav);
  }

  setscraegg() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('scraegg', scraeggfav);
  }

  sethandpies() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('handpies', handpiesfav);
  }

  setchila() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('chila', chilafav);
  }

  setshakshoka() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('shakshoka', shakshokafav);
  }

  setgranola() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('granola', granolafav);
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
    _confettiController.play();
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
      //FiltersState.veganactive = Colors.grey;
      //FiltersState.notvegetrainctive = Colors.grey;
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
                ? 'Breakfast Meals🥘'
                : ' وجبات الإفطار 🥘',
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
                                      'images/sal.jpg',
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
                                          ? 'Salad with Smoked Salmon'
                                          : 'سلطة مع سلمون مدخن',
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
                                            salmonfav = !salmonfav;
                                            setsalmon();
                                            salmonfav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            salmonfav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                             //   salmonfav == false
                                              //  ? null
                                              //  : ShowInterstial.showinterstialid();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: salmonfav == false
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
                                      ? '45 min'
                                      : '45 دقيقة ',
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
                                            child: SalmonPage(),
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
                                        'images/eggs.jpg',
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
                                          ? 'Scrambled Eggs'
                                          : 'بيض مخفوق',
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
                                            scraeggfav = !scraeggfav;
                                            setscraegg();
                                            scraeggfav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            scraeggfav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: scraeggfav == false
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
                                            child: ScraEgg(),
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
                                      'images/handpies.jpg',
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
                                          ? 'Breakfast Hand Pies'
                                          : 'فطائر الإفطار اليدوية',
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
                                            handpiesfav = !handpiesfav;
                                            sethandpies();
                                            handpiesfav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            handpiesfav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: handpiesfav == false
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
                                Expanded(
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? '20 minutes to 25 minutes'
                                        : 'من 20 دقيقة إلى 25 دقيقة',
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
                                            child: HandPies(),
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
                                      'images/chila.jpg',
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
                                          ? 'Chilaquiles'
                                          : 'تشيلاكويليس',
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
                                            chilafav = !chilafav;
                                            setchila();
                                            chilafav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            chilafav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                              //   chilafav == false
                                              // ?null
                                              //// :ShowInterstial.showinterstialid();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: chilafav == false
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
                                        ? '20 minutes to 25 minutes'
                                        : 'من 20 دقيقة إلى 25 دقيقة',
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
                                            child: Chila(),
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
                                      'images/Shakshuka-19-500x500.jpg',
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
                                          ? 'Shakshuka'
                                          : 'شكشوكة',
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
                                            shakshokafav = !shakshokafav;
                                            setshakshoka();
                                            shakshokafav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            shakshokafav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: shakshokafav == false
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
                                      ? '30 min'
                                      : '30 دقيقة ',
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
                                            child: Shakshoka(),
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
                                      'images/granola.jpg',
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
                                          ? 'Granola Bars'
                                          : 'بارات جرانولا',
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
                                            granolafav = !granolafav;
                                            setgranola();
                                            granolafav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            granolafav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                              //  granolafav == false
                                               // ? null
                                               //: ShowInterstial.showinterstialid();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: granolafav == false
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
                                      ? '55 min'
                                      : '55 دقيقة ',
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
                                            child: Granola(),
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
