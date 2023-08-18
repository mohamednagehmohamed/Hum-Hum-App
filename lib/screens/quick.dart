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
 
import 'package:mealapplication/screens/cheese.dart';
import 'package:mealapplication/screens/clahamburg.dart';
import 'package:mealapplication/screens/corirust.dart';
import 'package:mealapplication/screens/pan.dart';

import 'package:mealapplication/screens/salmon.dart';
import 'package:mealapplication/screens/scentize.dart';
import 'package:mealapplication/screens/spagittiingrediants.dart';
import 'package:mealapplication/screens/syrfalafel.dart';
import 'package:mealapplication/screens/toast.dart';
import 'package:mealapplication/screens/tomatoslami.dart';

import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'barbecio.dart';
import 'bucha.dart';
import 'filters.dart';
import 'miso.dart';
//import 'package:mealapplication/widgets/categoryscreen.dart';

//void main() => runApp(QuickPage());

class QuickPage extends StatefulWidget {
  @override
  QuickPageState createState() => QuickPageState();
}

class QuickPageState extends State<QuickPage> {
  static bool favouiretspagitti = false;
  static bool favouirettoast = false;
  static bool favouirethamburg = false;
  static bool favouiretsalmon = false;
  static bool favouiretpan = false;
  static bool favouiretcheese = false;
  static bool corirustfav = false;
  static bool schentizefav = false;
  static bool barbeciofav = false;
  static bool tomatoslamifav = false;
  static bool buchafav = false;
  static bool misofav = false;
  static bool syrflafelfav = false;
  late ConfettiController _confettiController;
  Future<void> handeltorefresh() async {
    return await Future.delayed(Duration(seconds: 2));
  }

  setfavouirettoast() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('favouirettoast', favouirettoast);
  }

  setfavouiretspagitti() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('favouiretspagitti', favouiretspagitti);
  }

  setfavouirethamurg() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('favouirethamburg', favouirethamburg);
  }

  setfavouiresalmon() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('favouiretsalmon', favouiretsalmon);
  }

  setfavouirepan() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('pan', favouiretpan);
  }

  setfavouirecheese() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('cheese', favouiretcheese);
  }

  setcorirust() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('corirust', corirustfav);
  }

  setschentize() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('schentize', schentizefav);
  }

  setbarbecio() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('barbecio', barbeciofav);
  }

  settomatoslami() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('tomatoslami', tomatoslamifav);
  }

  setbucha() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('bucha', buchafav);
  }

  setmiso() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('msio', misofav);
  }

  setsyrflafel() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('syrflafel', misofav);
  }

  showflushbaradd() async {
    await Flushbar(
      textDirection: HomePageState.arabicvalue == false
          ? TextDirection.ltr
          : TextDirection.rtl,
      //forwardAnimationCurve: Curves.easeInSine,
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
      // forwardAnimationCurve: Curves.easeInCirc,
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

  Widget checkdistance() {
    if (FiltersState.allvalue == true) {
      return SizedBox(
        height: 25,
      );
    }
    if (FiltersState.veganvalue == true) {
      return SizedBox(
        height: 0,
      );
    }
    if (FiltersState.notvegetraintvalue == true) {
      return SizedBox(
        height: 0,
      );
    }
    return SizedBox(
      height: 25,
    );
  }

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(duration: Duration(seconds: 2));
    if (FiltersState.allvalue == true) {
      FiltersState.veganvalue = true;
      FiltersState.notvegetraintvalue = true;
    }
    ShowInterstial.loadinteristial();
    //controller = MenuController(vsync: this);
    // FiltersState.veganactive = Colors.grey;
    //FiltersState.notvegetrainctive = Colors.grey;
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
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
            HomePageState.arabicvalue == false ? 'Quick Meals' : 'وجبات سريعة',
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
                                    child: Image.asset('images/spagitti.jpg')),
                                Positioned(
                                  bottom: 20,
                                  right: 10,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.6)),
                                    child: Text(
                                      HomePageState.arabicvalue == false
                                          ? 'Spagitti With Souce Tomato'
                                          : 'سباجيتي مع صلصة الطماطم,',
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
                                            favouiretspagitti =
                                                !favouiretspagitti;
                                            setfavouiretspagitti();
                                            favouiretspagitti == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            favouiretspagitti == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: favouiretspagitti == false
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
                                      : '20دقيقة ',
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
                                Expanded(
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Affordable'
                                        : 'يمكن شؤاءه ',
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
                            /* SizedBox(
                              height: 20,
                            ),*/
                            checkdistance(),
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
                                            child: SpagittiingrediantsPage(),
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
                  checkdistance(),
                  /*SizedBox(
                    height: 25,
                  ),*/
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
                                    child: Image.asset('images/toast.jpg',width: double.infinity,fit: BoxFit.cover,)),
                                Positioned(
                                  bottom: 20,
                                  right: 10,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.6)),
                                    child: Text(
                                      HomePageState.arabicvalue == false
                                          ? 'Toast Hawaii'
                                          : 'توست هاواي',
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
                                            favouirettoast = !favouirettoast;
                                            setfavouirettoast();
                                            favouirettoast == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            favouirettoast == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: favouirettoast == false
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
                                Expanded(
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Affordable'
                                        : 'يمكن شؤاءه ',
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
                            /*SizedBox(
                              height: 20,
                            ),*/
                            checkdistance(),
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
                                            child: ToastPage(),
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
                  checkdistance(),
                  /* SizedBox(
                    height: 25,
                  ),*/
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
                                        'images/classichamburg.jpg')),
                                Positioned(
                                  bottom: 20,
                                  right: 10,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.6)),
                                    child: Text(
                                      HomePageState.arabicvalue == false
                                          ? 'Classic Hamburg'
                                          : 'كلاسيك هامبورغ',
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
                                            favouirethamburg =
                                                !favouirethamburg;
                                            setfavouirethamurg();
                                            favouirethamburg == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            favouirethamburg == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: favouirethamburg == false
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
                            /* SizedBox(
                              height: 20,
                            ),*/
                            checkdistance(),
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
                                            child: ClahamburgPage(),
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
                  checkdistance(),
                  /* SizedBox(
                    height: 25,
                  ),*/
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
                                    child: InteractiveViewer(
                                        child: Image.asset(
                                      'images/sal.jpg',
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    ))),
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
                                            favouiretsalmon = !favouiretsalmon;
                                            setfavouiresalmon();
                                            favouiretsalmon == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            favouiretsalmon == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: favouiretsalmon == false
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
                                Expanded(
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'luxuries'
                                        : ' كماليات',
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
                            /*  SizedBox(
                              height: 20,
                            ),*/
                            checkdistance(),
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
                  checkdistance(),
                  /* SizedBox(
                    height: 25,
                  ),*/
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
                                    child: InteractiveViewer(
                                        child: Image.asset(
                                      'images/pandinner.jpg',
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    ))),
                                Positioned(
                                  bottom: 50,
                                  right: 10,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.6)),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        HomePageState.arabicvalue == false
                                            ? ' Spice Chicken Sheet Pan Dinner'
                                            : 'عشاء توابل دجاج',
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width*0.05444,
                                            color: Colors.white),
                                        softWrap: true,
                                        overflow: TextOverflow.fade,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    bottom: 20,
                                    left: 5,
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            favouiretpan = !favouiretpan;
                                            setfavouirepan();
                                            favouiretpan == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            favouiretpan == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: favouiretpan == false
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
                                      ? '35 min'
                                      : '35 دقيقة ',
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
                                Expanded(
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'luxuries'
                                        : ' كماليات',
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
                            /*   SizedBox(
                              height: 20,
                            ),*/
                            checkdistance(),
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
                                            child: Pan(),
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
                  checkdistance(),
                  /* SizedBox(
                    height: 25,
                  ),*/
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
                                    child: InteractiveViewer(
                                        child: Image.asset(
                                      'images/cheese.jpg',
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    ))),
                                Positioned(
                                  bottom: 20,
                                  right: 10,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.6)),
                                    child: Text(
                                      HomePageState.arabicvalue == false
                                          ? 'instant pot and cheese'
                                          : 'وعاء سريع التحضير والجبن',
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
                                            favouiretcheese = !favouiretcheese;
                                            setfavouirecheese();
                                            favouiretcheese == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            favouiretcheese == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: favouiretcheese == false
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
                                      ? '35 min'
                                      : '35 دقيقة ',
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
                                Expanded(
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'luxuries'
                                        : ' كماليات',
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
                            /*   SizedBox(
                              height: 20,
                            ),*/
                            checkdistance(),
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
                                            child: Cheese(),
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
                  checkdistance(),
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
                                    child: InteractiveViewer(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'images/qnxngLU0ZS.jpeg',
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )),
                                Positioned(
                                  bottom: 20,
                                  right: 10,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.6)),
                                    child: Text(
                                      HomePageState.arabicvalue == false
                                          ? 'Currywurst'
                                          : 'كوريوورست',
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
                                            corirustfav = !corirustfav;
                                            setcorirust();
                                            corirustfav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            corirustfav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                              //  corirustfav == false
                                              //  ? null
                                              //  : ShowInterstial.showinterstialid();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: corirustfav == false
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
                            /*  SizedBox(
                              height: 20,
                            ),*/
                            checkdistance(),
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
                                            child: CoriRust(),
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
                  checkdistance(),
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
                                    child:
                                        Image.asset('images/Schnitzel-5.jpg')),
                                Positioned(
                                  bottom: 20,
                                  right: 10,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.6)),
                                    child: Text(
                                      HomePageState.arabicvalue == false
                                          ? 'Authentic German Schnitzel'
                                          : 'شنيتزل ألماني أصيل',
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
                                            schentizefav = !schentizefav;
                                            setschentize();
                                            schentizefav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            schentizefav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: schentizefav == false
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
                                      ? '16 min'
                                      : '16 دقيقة ',
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
                            /* SizedBox(
                              height: 20,
                            ),*/
                            checkdistance(),
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
                                            child: Schentize(),
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
                  checkdistance(),
                  FiltersState.notvegetraintvalue == true
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
                                          'images/duckfriedricesqb.jpg')),
                                ),
                                Positioned(
                                  bottom: 20,
                                  right: 10,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.6)),
                                    child: Text(
                                      HomePageState.arabicvalue == false
                                          ? 'Korean barbecue chicken fried rice'
                                          : 'أرز مقلي بالدجاج الكوري باربيكيو',
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
                                            barbeciofav = !barbeciofav;
                                            setbarbecio();
                                            barbeciofav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            barbeciofav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: barbeciofav == false
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
                            /*  SizedBox(
                              height: 20,
                            ),*/
                            checkdistance(),
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
                                            child: Barbecio(),
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
                  checkdistance(),
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
                                      'images/quick-tomato-and-salami-pizzas-28398-1.jpg',
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
                                          ? 'Quick tomato and salami pizzas'
                                          : 'طماطم سريعة وبيتزا سلامي',
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
                                            tomatoslamifav = !tomatoslamifav;
                                            settomatoslami();
                                            tomatoslamifav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            tomatoslamifav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: tomatoslamifav == false
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
                            /*SizedBox(
                              height: 20,
                            ),*/
                            checkdistance(),
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
                                            child: TomatoSalami(),
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
                  checkdistance(),
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
                                      'images/bucha.jpg',
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
                                          ? 'Bun cha'
                                          : 'بون تشا',
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
                                            buchafav = !buchafav;
                                            setbucha();
                                            buchafav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            buchafav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: buchafav == false
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
                            /* SizedBox(
                              height: 20,
                            ),*/
                            checkdistance(),
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
                                            child: Bucha(),
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
                  checkdistance(),
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
                                      'images/sweet-miso-steak-with-ramen-14778-1.jpg',
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
                                          ? 'Sweet miso steak with ramen'
                                          : 'شريحة لحم ميسو حلوة مع رامين',
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
                                            misofav = !misofav;
                                            setmiso();
                                            misofav == false
                                                ? showflushbardelete()
                                                : showflushbaradd();
                                            misofav == false
                                                ? _confettiController.stop()
                                                : _confettiController.play();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.star_border_outlined,
                                          color: misofav == false
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
                            /*SizedBox(
                              height: 20,
                            ),*/
                            checkdistance(),
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
                                            child: Miso(),
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
                  checkdistance(),
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
                            /*  SizedBox(
                              height: 20,
                            ),*/
                            checkdistance(),
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
