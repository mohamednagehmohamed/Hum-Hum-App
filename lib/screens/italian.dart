import 'package:another_flushbar/flushbar.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:mealapplication/homepage.dart';
import 'package:mealapplication/modules/floatingbutton.dart';
import 'package:mealapplication/modules/showinterstial.dart';


import 'package:mealapplication/screens/botterga.dart';
import 'package:mealapplication/screens/filters.dart';
import 'package:mealapplication/screens/lazania.dart';
import 'package:mealapplication/screens/spagittiingrediants.dart';

import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';


//void main() => runApp(ItalianPage());

class ItalianPage extends StatefulWidget {
  @override
  ItalianPageState createState() => ItalianPageState();
}

class ItalianPageState extends State<ItalianPage> {
  static bool favouiretspagitti = false;
  static bool favouiretlazania = false;
  static bool favouiretbotterga = false;
  
String spagittitext=HomePageState.arabicvalue == false
                                      ? 'Ingredients'
                                      : ' مكونات ';
                                    

  bool ishovered = false;
  late ConfettiController _confettiController;
  Future<void> handeltorefresh() async {
    return await Future.delayed(Duration(seconds: 2));
  }

  setfavouiretlazania() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('favouiretlazania', favouiretlazania);
  }

  setfavouiretspagitti() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('favouiretspagitti', favouiretspagitti);
  }

  setfavouiretbotterga() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('favouiretbotterga', favouiretbotterga);
  }

  void onentered(bool ishovered) {
    setState(() {
      this.ishovered = ishovered;
    });
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

  Future<bool> addfavouiret() async {
    return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.yellow,
              title: Text(
                HomePageState.arabicvalue == false
                    ? 'added to favourites'
                    : 'تمت الاضافة الي المفضلة',
                style: TextStyle(fontSize: 15),
              ),
              actions: [
                MaterialButton(
                  color: Color(0xff3C318D),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pop();
                    });
                  },
                  child: Text(
                    HomePageState.arabicvalue == false ? 'OK' : 'نعم',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ));
  }

  Future<bool> deletefavouiret() async {
    return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.yellow,
              title: Text(
                HomePageState.arabicvalue == false
                    ? 'Deleted from favourites'
                    : 'تم الحذف من المفضلة',
                style: TextStyle(fontSize: 15),
              ),
              actions: [
                MaterialButton(
                  color: Color(0xff3C318D),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pop();
                    });
                  },
                  child: Text(
                    HomePageState.arabicvalue == false ? 'OK' : 'نعم',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ));
  }

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(duration: Duration(seconds: 2));
    //controller = MenuController(vsync: this);
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

  @override
  Widget build(BuildContext context) {
    //final hoveredtransform = Matrix4.identity()..scale(1.3);
    //final transform = ishovered ? hoveredtransform : Matrix4.identity();
    //final   = DUMMY_MEALS.where((element) => false).toList();
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
                ? 'Italian Meals'
                : 'وجبات ايطالية',
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
                                  'images/spagitti.jpg',
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
                                    ? 'Spagitti With Souce Tomato'
                                   : 'سباجيتي مع صلصة الطماطم,',
                                   style: TextStyle(
                                 fontSize: MediaQuery.of(context).size.width*0.05444,
                                  color: Colors.white),
                               softWrap: true,
                              overflow: TextOverflow.fade,
                                                      ),
                                                        )
                                                  ),
                            Positioned(
                                bottom: 20,
                                left: 5,
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                         favouiretspagitti = !favouiretspagitti;
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
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 170,
                          //height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black),
                          child: Hero(
                            tag: 'spagitti',
                            child: TextButton(
                                onPressed: () {
                                  
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          child: SpagittiingrediantsPage(),
                                          type: PageTransitionType.fade));
                                },
                                child: Text(
                                  spagittitext,
                                  style: TextStyle(
                                      color: Colors.lightBlueAccent,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      backgroundColor: Colors.black),
                                )),
                          )
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
                                child:
                                    Image.asset('images/177lazania.jpg')),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6)),
                                child: Text(
                                  HomePageState.arabicvalue == false
                                      ? 'lasagna'
                                      : ' لازانيا',
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
                                        favouiretlazania =
                                            !favouiretlazania;
                                        setfavouiretlazania();
                                        favouiretlazania == false
                                            ? showflushbardelete()
                                            : showflushbaradd();
                                        favouiretlazania == false
                                            ? _confettiController.stop()
                                            : _confettiController.play();
                                      });
                                    },
                                    icon: Icon(
                                      Icons.star_border_outlined,
                                      color: favouiretlazania == false
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
                                // blastDirection: pi,
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
                                  ? '45 minutes'
                                  : '45دقيقة ',
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
                                        child: Lazania(),
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
                                child: Image.asset('images/botterga.jpg')),
                           Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6)),
                                child: Text(
                                  HomePageState.arabicvalue == false
                                      ? 'Bottarga'
                                      : ' بوتيرجا',
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
                                        favouiretbotterga =
                                            !favouiretbotterga;
                                        setfavouiretbotterga();
                                        favouiretbotterga == false
                                            ? showflushbardelete()
                                            : showflushbaradd();
                                        favouiretbotterga == false
                                            ? _confettiController.stop()
                                            : _confettiController.play();
                                      });
                                    },
                                    icon: Icon(
                                      Icons.star_border_outlined,
                                      color: favouiretbotterga == false
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
                                  ? '20 minutes'
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
                                        child: Botterga(),
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
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
