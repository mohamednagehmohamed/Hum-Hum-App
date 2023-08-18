//import 'dart:async';
//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mealapplication/homepage.dart';
import 'package:mealapplication/modules/showinterstial.dart';

import 'package:mealapplication/screens/barbecio.dart';
import 'package:mealapplication/screens/bucha.dart';
import 'package:mealapplication/screens/filters.dart';

import 'package:mealapplication/screens/miso.dart';
import 'package:mealapplication/screens/mushrom.dart';
import 'package:mealapplication/screens/sovaki.dart';
import 'package:mealapplication/screens/tomatoslami.dart';
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

//void main() => runApp(LightPage());

class LightPage extends StatefulWidget {
  @override
  LightPageState createState() => LightPageState();
}

class LightPageState extends State<LightPage> {
  static bool soflakifav = false;
  static bool barbeciofav = false;
  static bool tomatoslamifav = false;
  static bool mushromfav = false;
  static bool buchafav = false;
  static bool misofav = false;
  late ConfettiController _confettiController;
  setsoflaki() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('soflaki', soflakifav);
  }

  setbarbecio() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('barbecio', barbeciofav);
  }

  settomatoslami() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('tomatoslami', tomatoslamifav);
  }

  setmushrom() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('mushrom', mushromfav);
  }

  setbucha() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('bucha', buchafav);
  }

  setmiso() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('miso', misofav);
  }

  showflushbaradd() async {
    await Flushbar(
      textDirection: HomePageState.arabicvalue == false
          ? TextDirection.ltr
          : TextDirection.rtl,
      title: HomePageState.arabicvalue == false
          ? 'Meal Application'
          : 'تطبيق الوجبات',
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
          ? 'Meal Application'
          : 'تطبيق الوجبات',
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
      //  FiltersState.veganactive = Colors.grey;
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
                ? 'Beutiful Meals 🥘'
                : ' 🥘وجبات جميلة',
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
                 FiltersState.notvegetraintvalue==true?Column(
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
                            'images/sovlakli.jpg',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ))),
                      Positioned(
                        bottom: 20,
                        right: 10,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.6)),
                          child: Text(
                            HomePageState.arabicvalue == false
                                ? 'Chicken souvlaki with tzatziki'
                                : 'سوفلاكي دجاج مع تزاتزيكي',
                            style:
                                TextStyle(fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
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
                                  soflakifav = !soflakifav;
                                  setsoflaki();
                                  soflakifav == false
                                      ? showflushbardelete()
                                      : showflushbaradd();
                                  soflakifav == false
                                      ? _confettiController.stop()
                                      : _confettiController.play();
                                });
                              },
                              icon: Icon(
                                Icons.star_border_outlined,
                                color: soflakifav == false
                                    ? Colors.grey
                                    : Colors.yellow,
                                size: 50,
                              ))),
                      Align(
                        alignment: Alignment.center,
                        child: ConfettiWidget(
                          confettiController: _confettiController,
                          blastDirectionality: BlastDirectionality.explosive,
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
                        HomePageState.arabicvalue == false ? 'Pricy' : 'ثمنا',
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
                                  child: Solvaki(),
                                  type: PageTransitionType.leftToRight));
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
                 ):Container(),
                  SizedBox(
                    height: 25,
                  ),
               FiltersState.veganvalue==true?Column(
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
                            child: Image.asset('images/duckfriedricesqb.jpg')),
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
                            style:
                                TextStyle(fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
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
                          blastDirectionality: BlastDirectionality.explosive,
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
                        HomePageState.arabicvalue == false ? 'Simple' : 'بسيط ',
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
                        HomePageState.arabicvalue == false ? 'Pricy' : 'ثمنا',
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
                                  child: Barbecio(),
                                  type: PageTransitionType.leftToRight));
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
               ):Container(),
                  SizedBox(
                    height: 25,
                  ),
                 FiltersState.notvegetraintvalue==true?Column(
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
                            style:
                                TextStyle(fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
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
                          blastDirectionality: BlastDirectionality.explosive,
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
                        HomePageState.arabicvalue == false ? 'Simple' : 'بسيط ',
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
                        HomePageState.arabicvalue == false ? 'Pricy' : 'ثمنا',
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
                 ):Container(),
                  SizedBox(
                    height: 25,
                  ),
                 FiltersState.notvegetraintvalue==true?Column(children: [ Stack(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                          child: Image.asset(
                            'images/12recipehealth-articleLarge-v2.jpg',
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
                                ? 'Mushroom lasagne'
                                : 'لازانيا الفطر',
                            style:
                                TextStyle(fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
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
                                  mushromfav = !mushromfav;
                                  setmushrom();
                                  mushromfav == false
                                      ? showflushbardelete()
                                      : showflushbaradd();
                                  mushromfav == false
                                      ? _confettiController.stop()
                                      : _confettiController.play();
                                     // mushromfav == false
                                              //  ? null
                                               // : ShowInterstial.showinterstialid();
                                });
                              },
                              icon: Icon(
                                Icons.star_border_outlined,
                                color: mushromfav == false
                                    ? Colors.grey
                                    : Colors.yellow,
                                size: 50,
                              ))),
                      Align(
                        alignment: Alignment.center,
                        child: ConfettiWidget(
                          confettiController: _confettiController,
                          blastDirectionality: BlastDirectionality.explosive,
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
                            ? '90 min'
                            : '90 دقيقة ',
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
                        HomePageState.arabicvalue == false ? 'Simple' : 'بسيط ',
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
                        HomePageState.arabicvalue == false ? 'Pricy' : 'ثمنا',
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
                                  child: Mushrom(),
                                  type: PageTransitionType.leftToRight));
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
                  ),],):Container(),
                  SizedBox(
                    height: 25,
                  ),
                FiltersState.veganvalue==true?Column(
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
                            style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
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
                                    //  buchafav == false
                                              //  ? null
                                              //  : ShowInterstial.showinterstialid();
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
                          blastDirectionality: BlastDirectionality.explosive,
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
                        HomePageState.arabicvalue == false ? 'Simple' : 'بسيط ',
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
                        HomePageState.arabicvalue == false ? 'Pricy' : 'ثمنا',
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
                                  child: Bucha(),
                                  type: PageTransitionType.leftToRight));
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
                ):Container(),
                  SizedBox(
                    height: 25,
                  ),
                 FiltersState.notvegetraintvalue==true?Column(
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
                            style:
                                TextStyle(fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
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
                          blastDirectionality: BlastDirectionality.explosive,
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
                        HomePageState.arabicvalue == false ? 'Simple' : 'بسيط ',
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
                        HomePageState.arabicvalue == false ? 'Pricy' : 'ثمنا',
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
                                  child: Miso(),
                                  type: PageTransitionType.leftToRight));
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
                 ):Container(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
