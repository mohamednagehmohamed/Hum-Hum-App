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


import 'package:mealapplication/screens/bourgnion.dart';
import 'package:mealapplication/screens/cassoulet.dart';
import 'package:mealapplication/screens/chocolate.dart';
import 'package:mealapplication/screens/filters.dart';
import 'package:mealapplication/screens/soup.dart';
import 'package:mealapplication/screens/steak.dart';
import 'package:mealapplication/screens/tarti.dart';

import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';


//import 'package:mealapplication/widgets/categoryscreen.dart';

//void main() => runApp(FrenchPage());

class FrenchPage extends StatefulWidget {
  @override
  FrenchPageState createState() => FrenchPageState();
}

class FrenchPageState extends State<FrenchPage> {
  static bool souflifav = false;
  static bool soupfav = false;
  static bool cassouletfav = false;
  static bool bourgnionfav = false;
  static bool steakfav = false;
  static bool tartifav = false;
  bool isplaying = false;
  late ConfettiController _confettiController;
  //late RiveAnimationController rivecontroller;
  setsoufli() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('soufli', souflifav);
  }

  setsoup() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('soup', soupfav);
  }

  setcassoulet() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('cassoulet', cassouletfav);
  }

  setbourgnion() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('bourgnion', bourgnionfav);
  }

  setsteak() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('steak', steakfav);
  }

  settarti() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('tarti', tartifav);
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
                ? 'French Meals'
                : 'وجبات فرنسيه',
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
                                      'images/easy-molten-chocolate-souffle-58756-1.jpeg',
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
                                          ? 'Chocolate Souffle'
                                          : 'سوفلي الشوكولاته',
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
                                            souflifav = !souflifav;
                                            setsoufli();
                                            souflifav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            souflifav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: souflifav == false
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
                                      ? '60 min'
                                      : '60 دقيقة ',
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
                                            child: ChocolatePage(),
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
                                        'images/edcf022021ae486cb7c6978f65ead60a.jpg',
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
                                          ? 'Soupe à l’oignon'
                                          : 'حساء بالبصل',
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
                                            soupfav = !soupfav;
                                            setsoup();
                                            soupfav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                         //   soupfav == false
                                               // ? _confettiController.stop()
                                               // : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: soupfav == false
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
                                      ? '20 min'
                                      : '20 دقيقة ',
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
                                            child: Soup(),
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
                                ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                    child: Image.asset(
                                      'images/cassoulet.jpg',
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
                                          ? 'Cassoulet'
                                          : 'كاسوليت',
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
                                            cassouletfav = !cassouletfav;
                                            setcassoulet();
                                            cassouletfav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            cassouletfav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: cassouletfav == false
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
                                      ? '6 hours'
                                      : '6 ساعات',
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
                                            child: Cassoulet(),
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
                                      'images/3ac04e6a-0fe6-4891-8cc7-3db4701b4b20.jpg',
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
                                          ? 'Bœuf bourguignon'
                                          : 'بوف بورغينيون',
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
                                            bourgnionfav = !bourgnionfav;
                                            setbourgnion();
                                            bourgnionfav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            bourgnionfav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                              // bourgnionfav == false
                                            //   ? null
                                                //: ShowInterstial.showinterstialid();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: bourgnionfav == false
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
                                        ? '3 hrs 15 mins'
                                        : '3 ساعات و 15 دقيقة',
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
                                            child: Bourgnion(),
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
                                      'images/steak.jpg',
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
                                          ? 'Steak frites'
                                          : 'فريتس شريحة لحم',
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
                                            steakfav = !steakfav;
                                            setsteak();
                                            steakfav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            steakfav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: steakfav == false
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
                                        ? '2 hrs 45 mins'
                                        : 'ساعتان و 45 دقيقة',
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
                                            child: Steak(),
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
                                ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                    child: Image.asset(
                                      'images/pear-and-caramel-tarte-tatin-101649-1.jpeg',
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
                                          ? 'Tarte tatin'
                                          : 'تارت تأتين',
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
                                            tartifav = !tartifav;
                                            settarti();
                                            tartifav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            tartifav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                             //   tartifav == false
                                              // ? null
                                               // : ShowInterstial.showinterstialid();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: tartifav == false
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
                                            child: Tarti(),
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
