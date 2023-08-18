import 'dart:async';
import 'dart:ffi';

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mealapplication/widgets/splash.dart';

import 'package:page_transition/page_transition.dart';

import '../homepage.dart';
import 'help.dart';

//import 'package:google_fonts/google_fonts.dart';

/*void main() {
  runApp(SecondSplash());
}*/

class Data {
  final String imageurl;

  Data(this.imageurl);
}

class SecondSplash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SecondSplashState();
  }
}

class SecondSplashState extends State<SecondSplash> {
  bool visible = false;
  final PageController controller = PageController(initialPage: 1);
  int currentindex = 0;
  bool change = false;
  final List<Data> mydata = [
    /* Data('images/brimble.jpg'),
    Data('images/vitalli.jpg'),
    Data('images/hansel.jpg'),
    Data('images/khloe.jpg'),
    Data('images/caroline.jpg'),
    Data('images/sal.jpg'),
    Data('images/de.jpg'),*/
    Data('images/splashes/GIF by LAZY MOM - Find & Share on GIPHY.gif'),
    Data('images/splashes/home cooking.gif'),
    Data('images/splashes/Steak Salad Recipe.gif'),
    Data(
        'images/splashes/Super Tasty Cinemagraphs by Daria Khoroshavina _ Moss and Fog.gif'),
    Data('images/splashes/VW #3 — fast food.gif'),
    Data('images/splashes/Weekend links_.gif'),
    // Data('24401f5812f1cdeb3805ffd03c9729fffb6e40f07120f-uup2cP_fw658.gif'),
  ];

  double opacityindex = 0;
  @override
  Void? initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 3), (timer) {
      if (currentindex < 7 && opacityindex < 1) {
        currentindex++;
        opacityindex += 0.1;
        controller.animateToPage(currentindex,
            duration: Duration(microseconds: 300), curve: Curves.easeIn);
      }
    });
  }

  Future<bool> onBackButton() async {
    return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.purple,
              title: Text(
                HomePageState.arabicvalue == false
                    ? 'Hum Hum Application💎'
                    : ' تطبيق هم هم 💎',
                style: TextStyle(fontSize: 15),
              ),
              actions: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: MaterialButton(
                          color: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: SecondSplash(),
                                      type: PageTransitionType.fade));
                            });
                          },
                          child: Text(
                            HomePageState.arabicvalue == false
                                ? 'Back to the same page'
                                : 'العودة لنفس الصفحه',
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                    Center(
                      child: MaterialButton(
                          color: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: Help(),
                                      type: PageTransitionType.fade));
                            });
                          },
                          child: Text(
                            HomePageState.arabicvalue == false
                                ? 'Information about App'
                                : 'معلومات عن التطبيق',
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                    Center(
                      child: MaterialButton(
                          color: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onPressed: () {
                            setState(() {
                              SystemNavigator.pop();
                            });
                          },
                          child: Text(
                            HomePageState.arabicvalue == false
                                ? 'Quit'
                                : 'الخروج',
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                  ],
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onBackButton,
      child: Scaffold(
        body: PageView(
            controller: controller,
            children: mydata
                .map((e) => Container(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Opacity(
                          opacity: opacityindex,
                          child: MaterialButton(
                              color: Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              onPressed: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          child: Splash(),
                                          type:
                                              PageTransitionType.leftToRight));
                                });
                              },
                              child: Text(
                                'start',
                                style: TextStyle(
                                    fontSize: 22, color: Colors.amber),
                              )),
                        ),
                      ),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: ExactAssetImage(e.imageurl),
                              fit: BoxFit.fill)),
                    ))
                .toList(),
            onPageChanged: (val) {
              setState(
                () {
                  currentindex = val;
                  /*if (currentindex == 7) {
                    Future.delayed(
                        Duration(seconds: 2),
                        () => Navigator.push(
                            context,
                            PageTransition(
                                child: ColorLoad(),
                                type: PageTransitionType.bottomToTop)));*/
                },
              );
            }),
      ),
    );
  }
}
