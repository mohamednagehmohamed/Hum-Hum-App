import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mealapplication/homepage.dart';
import 'package:mealapplication/lentilsoup.dart';
import 'package:mealapplication/modules/floatingbutton.dart';
import 'package:mealapplication/screens/asian.dart';
import 'package:mealapplication/screens/asparagos.dart';
import 'package:mealapplication/screens/banana.dart';
import 'package:mealapplication/screens/beef.dart';
import 'package:mealapplication/screens/botterga.dart';
import 'package:mealapplication/screens/breakfast.dart';
import 'package:mealapplication/screens/cheese.dart';
import 'package:mealapplication/screens/chila.dart';
import 'package:mealapplication/screens/chocolate.dart';
import 'package:mealapplication/screens/clahamburg.dart';
import 'package:mealapplication/screens/corirust.dart';
import 'package:mealapplication/screens/delicious.dart';
import 'package:mealapplication/screens/egyption.dart';
import 'package:mealapplication/screens/exotic.dart';
import 'package:mealapplication/screens/fattah.dart';
import 'package:mealapplication/screens/flafel.dart';
import 'package:mealapplication/screens/foul.dart';
import 'package:mealapplication/screens/french.dart';
import 'package:mealapplication/screens/gado.dart';
import 'package:mealapplication/screens/german.dart';
import 'package:mealapplication/screens/granola.dart';
import 'package:mealapplication/screens/herp.dart';
import 'package:mealapplication/screens/hummus.dart';
import 'package:mealapplication/screens/italian.dart';
import 'package:mealapplication/screens/koshari.dart';
import 'package:mealapplication/screens/lazania.dart';
import 'package:mealapplication/screens/light.dart';
import 'package:mealapplication/screens/manakish.dart';
import 'package:mealapplication/screens/miso.dart';
import 'package:mealapplication/screens/noodle.dart';
import 'package:mealapplication/screens/pan.dart';
import 'package:mealapplication/screens/penne.dart';
import 'package:mealapplication/screens/pesto.dart';
import 'package:mealapplication/screens/poke.dart';
import 'package:mealapplication/screens/porridge.dart';
import 'package:mealapplication/screens/pregnant.dart';
import 'package:mealapplication/screens/quick.dart';
import 'package:mealapplication/screens/roladin.dart';
import 'package:mealapplication/screens/salmon.dart';
import 'package:mealapplication/screens/scentize.dart';
import 'package:mealapplication/screens/scraegg.dart';
import 'package:mealapplication/screens/shakshoka.dart';
import 'package:mealapplication/screens/shawerma.dart';
import 'package:mealapplication/screens/shish.dart';
import 'package:mealapplication/screens/slaw.dart';
import 'package:mealapplication/screens/smashed.dart';
import 'package:mealapplication/screens/soup.dart';
import 'package:mealapplication/screens/sovaki.dart';
import 'package:mealapplication/screens/spagittiingrediants.dart';
import 'package:mealapplication/screens/steak.dart';
import 'package:mealapplication/screens/suerbraten.dart';
import 'package:mealapplication/screens/summer.dart';
import 'package:mealapplication/screens/syrfalafel.dart';
import 'package:mealapplication/screens/tarti.dart';
import 'package:mealapplication/screens/toast.dart';
import 'package:mealapplication/screens/tomatoslami.dart';
import 'package:mealapplication/screens/tso.dart';
import 'package:mealapplication/screens/video.dart';
import 'package:mealapplication/screens/yabrak.dart';

import 'package:page_transition/page_transition.dart';

import 'baked.dart';
import 'barbecio.dart';
import 'bourgnion.dart';
import 'bucha.dart';
import 'cassoulet.dart';
import 'handpies.dart';
import 'ketches.dart';
import 'maklopa.dart';
import 'melon.dart';
import 'mushrom.dart';

/*void main() {
  runApp(Favouirts());
}*/

class Favouirts extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FavouirtsState();
  }
}

class FavouirtsState extends State<Favouirts> {
  //VideoPlayerController? controller;
  //Future<void>? initializedvideoplayer;

  static int id = 0;
  bool iscolord = false;

  showflushbar() async {
    await Flushbar(
      textDirection: HomePageState.arabicvalue == false
          ? TextDirection.ltr
          : TextDirection.rtl,
      mainButton: TextButton(onPressed: () {}, child: Text('Show Nutrition')),
      title: HomePageState.arabicvalue == false
          ? 'Meal Application'
          : 'تطبيق الوجبات',
      message: HomePageState.arabicvalue == false ? 'NUTRITION' : 'تغذية',
      icon: Icon(
        Icons.info_rounded,
        color: Colors.green,
      ),
      duration: Duration(seconds: 5),
    ).show(context);
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
                              Navigator.of(context).pop();
                            });
                          },
                          child: Text(
                            'Resume',
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
                                      child: Favouirts(),
                                      type: PageTransitionType.fade));
                            });
                          },
                          child: Text(
                            'Restart',
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
                            setState(() {});
                          },
                          child: Text(
                            'Help',
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
                            'Quit',
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                  ],
                )
              ],
            ));
  }

  Future<bool> tryagain() async {
    return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Color(0xffB30074),
              title: Center(
                child: Text(
                  'Answer Is Wrong 😭',
                  style: TextStyle(fontSize: 20, color: Colors.yellow),
                ),
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
                                      child: Favouirts(),
                                      type: PageTransitionType.fade));
                            });
                          },
                          child: Text(
                            'Try Aagin 😥',
                            style: TextStyle(fontSize: 20),
                          )),
                    ),
                  ],
                )
              ],
            ));
  }

  Future<bool> tryqurstionnow() async {
    return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Color(0xffB30074),
              title: Center(
                child: Text(
                  'time is over😭',
                  style: TextStyle(fontSize: 20, color: Colors.yellow),
                ),
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
                                      child: Favouirts(),
                                      type: PageTransitionType.fade));
                            });
                          },
                          child: Text(
                            'Try Aagin 😥',
                            style: TextStyle(fontSize: 20),
                          )),
                    ),
                  ],
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: HomePageState.arabicvalue == false
          ? TextDirection.ltr
          : TextDirection.rtl,
      child: Scaffold(
          backgroundColor:
              HomePageState.darkmode == false ? Colors.white : Colors.black,
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.black,
            onPressed: () {
              setState(() {
                Navigator.push(
                    context,
                    PageTransition(
                        child: HomePage(),
                        type: PageTransitionType.leftToRight));
              });
            },
            child: Icon(
              Icons.backspace_sharp,
              size: 25,
            ),
            shape: MyFloatingButton(),
          ),
          appBar: AppBar(
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            toolbarHeight: 70,
            centerTitle: true,
            title: Text(
              HomePageState.arabicvalue == false
                  ? 'Favouiret Page'
                  : 'صفحة المفضلات',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width*0.05444,
                  fontWeight: FontWeight.bold,
                  // fontFamily: GoogleFonts.abel().fontFamily,
                  color: Colors.white),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  gradient: LinearGradient(colors: [
                    Colors.purple,
                    Colors.deepPurple,
                    Colors.purple
                  ])),
            ),
          ),
          body: ListView(
            children: [
              ItalianPageState.favouiretspagitti == false
                  ? Container()
                  : Column(
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
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: SpagittiingrediantsPage(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 1;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                            Text(
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
                          ],
                        ),
                      ],
                    ),
              SizedBox(
                height: 28,
              ),
              ItalianPageState.favouiretlazania == false
                  ? Container()
                  : Column(
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
                                child: Image.asset('images/177lazania.jpg')),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Lazania(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 2;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                                  ? '45 minutes '
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
                            Text(
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
                          ],
                        ),
                      ],
                    ),
              SizedBox(
                height: 28,
              ),
              ItalianPageState.favouiretbotterga == false
                  ? Container()
                  : Column(
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
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Botterga(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 3;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              QuickPageState.favouirethamburg == false
                  ? Container()
                  : Column(
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
                                    Image.asset('images/classichamburg.jpg')),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: ClahamburgPage(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 4;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              QuickPageState.favouiretsalmon == false
                  ? Container()
                  : Column(
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
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: SalmonPage(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 5;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              QuickPageState.favouirettoast == false
                  ? Container()
                  : Column(
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
                                child: Image.asset('images/toast.jpg')),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: ToastPage(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 6;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              EgyptionPageState.kosharifav == false
                  ? Container()
                  : Column(
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
                                child: Image.asset('images/koshari.jpg')),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Koshari(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Koshari'
                                        : 'كشري',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 7;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              EgyptionPageState.lentilefav == false
                  ? Container()
                  : Column(
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
                                  child: Image.asset('images/lentile.jpeg')),
                            ),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Lentile(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Egyptian Lentil Soup'
                                        : 'شوربة عدس مصرية',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 8;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              EgyptionPageState.fattahfav == false
                  ? Container()
                  : Column(
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
                                child: Image.asset('images/fattah.jpg')),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Fattah(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Fattah'
                                        : 'فتة',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 9;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              EgyptionPageState.foulfav == false
                  ? Container()
                  : Column(
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
                                child: Image.asset('images/foul.jpg')),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Foul(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Foul Mudammas'
                                        : 'فول مدمس',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 10;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              EgyptionPageState.hummusfav == false
                  ? Container()
                  : Column(
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
                                child: Image.asset('images/hummud.jpg')),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Hummus(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Egyptian Hummus'
                                        : 'حمص مصري',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 11;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              QuickPageState.favouiretpan == false
                  ? Container()
                  : Column(
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
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Pan(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Text(
                                      HomePageState.arabicvalue == false
                                          ? ' Spice Chicken Sheet Pan Dinner'
                                          : 'عشاء توابل دجاج',
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                      softWrap: true,
                                      overflow: TextOverflow.fade,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 12;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              QuickPageState.favouiretcheese == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Cheese(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 13;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              BreakfastPageState.salmonfav == false
                  ? Container()
                  : Column(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: InteractiveViewer(
                                  scaleEnabled: true,
                                  child: Image.asset(
                                    'images/sal.jpg',
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                )),
                            Positioned(
                              right: 10,
                              bottom: 30,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            child: SalmonPage(),
                                            type: PageTransitionType
                                                .rightToLeftWithFade));
                                  });
                                },
                                child: Text(
                                  HomePageState.arabicvalue == false
                                      ? 'Salade With Smoked Salmon'
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
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 14;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                                  ? '15 min'
                                  : '15 دقيقة',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
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
                                  : 'بسيط',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
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
                                    : 'الكماليات',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
              GermanPageState.ketchesfav == false
                  ? Container()
                  : Column(
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
                                  child: Image.asset('images/Käsespätzle.jpg')),
                            ),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Ketches(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Käsespätzle'
                                        : 'نودلز الجبن',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 15;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                                  ? '1 hr'
                                  : '1 ساعة',
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
                      ],
                    ),
              GermanPageState.corirustfav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: CoriRust(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 16;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              GermanPageState.rodalinefav == false
                  ? Container()
                  : Column(
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
                                    'images/Rouladen-7-500x375.jpg')),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Rodaline(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Rouladen'
                                        : 'رولادين',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 17;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                                  ? '2 hrs 25 mins'
                                  : 'ساعتان و 25 دقيقة',
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
                      ],
                    ),
              QuickPageState.schentizefav == false
                  ? Container()
                  : Column(
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
                                child: Image.asset('images/Schnitzel-5.jpg')),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Schentize(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 18;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              GermanPageState.suerbratenfav == false
                  ? Container()
                  : Column(
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
                                  'images/suerbaraten.jpg',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                )),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Suerpraten(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Sauerbraten'
                                        : 'سويربراتن',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 19;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                                  ? '4 hrs'
                                  : '4 ساعات',
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
                      ],
                    ),
              LightPageState.soflakifav == false
                  ? Container()
                  : Column(
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
                                child: Image.asset('images/sovlakli.jpg',
                                    width: double.infinity, fit: BoxFit.cover)),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Solvaki(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Chicken souvlaki with tzatziki'
                                        : 'سوفلاكي دجاج مع تزاتزيكي',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 20;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              LightPageState.barbeciofav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Barbecio(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 21;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              QuickPageState.barbeciofav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Barbecio(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 22;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              LightPageState.tomatoslamifav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: TomatoSalami(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 23;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              QuickPageState.tomatoslamifav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: TomatoSalami(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 24;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              LightPageState.mushromfav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Mushrom(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Mushroom lasagne'
                                        : 'لازانيا الفطر',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 25;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              QuickPageState.buchafav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Bucha(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 26;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              LightPageState.buchafav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Bucha(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 27;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              QuickPageState.misofav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Miso(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 28;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              LightPageState.misofav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Miso(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 29;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              ExoticPageState.shawrmafav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Shawerma(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 30;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              ExoticPageState.manakishfav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Manakish(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 31;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              ExoticPageState.syrflafelfav == false
                  ? Container()
                  : Column(
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
                                    'images/syrian flafel.jpg',
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: SyrFlafel(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 32;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              QuickPageState.syrflafelfav == false
                  ? Container()
                  : Column(
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
                                    'images/syrian flafel.jpg',
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: SyrFlafel(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 33;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              ExoticPageState.yabrakfav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Yabrak(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 34;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                                    ? '1 ساعة و 20 دقيقة'
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
                      ],
                    ),
              ExoticPageState.maklopafav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Maklopa(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 35;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              ExoticPageState.shishfav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Shish(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 36;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              BreakfastPageState.scraeggfav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: ScraEgg(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 37;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              BreakfastPageState.handpiesfav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: HandPies(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 38;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              BreakfastPageState.chilafav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Chila(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 39;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              BreakfastPageState.shakshokafav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Shakshoka(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 40;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              BreakfastPageState.granolafav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Granola(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 41;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              AsianPageState.clahumborgfav == false
                  ? Container()
                  : Column(
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
                                  'images/ham.jpg',
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                )),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: ClahamburgPage(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 42;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              AsianPageState.tsofav == false
                  ? Container()
                  : Column(
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
                                    'images/General-Tsos-Chicken-4-1024x1536.jpg',
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Tso(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'General Tso’s Chicken '
                                        : 'دجاج الجنرال تسو',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 43;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              AsianPageState.beeffav == false
                  ? Container()
                  : Column(
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
                                  'images/How-to-Cook-Beef-with-Broccoli.jpg',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                )),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Beef(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Beef and Broccoli'
                                        : 'لحم البقر والبروكلي',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 44;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                                  ? '33 min'
                                  : '33 دقيقة ',
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
                      ],
                    ),
              AsianPageState.slawfav == false
                  ? Container()
                  : Column(
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
                                  'images/Asian-Slaw_2.jpg',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                )),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Slaw(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Asian Slaw '
                                        : 'سلو الآسيوية',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 45;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              AsianPageState.gadofav == false
                  ? Container()
                  : Column(
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
                                  'images/Indonesian-Gado-Gado-SQ.jpg',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                )),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Gado(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Gado Gado'
                                        : 'جدو قادو',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 46;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              AsianPageState.noodlefav == false
                  ? Container()
                  : Column(
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
                                  'images/Thai-Noodle-Salad-with-Peanut-Sauce-100-5.jpg',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                )),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Noodle(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? ' Thai Noodle Salad'
                                        : 'سلطة المعكرونة التايلاندية',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 47;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              FrenchPageState.souflifav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: ChocolatePage(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 48;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              FrenchPageState.soupfav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Soup(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 49;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              FrenchPageState.cassouletfav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Cassoulet(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 50;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              FrenchPageState.bourgnionfav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Bourgnion(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 51;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              FrenchPageState.steakfav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Steak(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 52;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              FrenchPageState.tartifav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Tarti(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 53;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              SummerPageState.asparagosfav == false
                  ? Container()
                  : Column(
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
                                  'images/asparagus-3304997_1280.jpg',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                )),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Asparagos(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Asparagus Salad with Cherry Tomatoes'
                                        : 'سلطة الهليون مع الطماطم الكرزية',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 54;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                                  ? 'luxuries'
                                  : 'الكماليات',
                              style: TextStyle(
                                  color: HomePageState.darkmode == false
                                      ? Colors.black
                                      : Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
              SummerPageState.deliciousfav == false
                  ? Container()
                  : Column(
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
                                    'images/pastry-2274750_1280.jpg',
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: DeliciousPage(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Delicious Orange Mousse'
                                        : 'موس البرتقال اللذيذ',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 55;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                                    ? '240 min'
                                    : '240 دقيقة ',
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
                            Flexible(
                              child: Text(
                                HomePageState.arabicvalue == false
                                    ? 'affordable'
                                    : 'يمكن شؤاءه',
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
                      ],
                    ),
              SummerPageState.pokefav == false
                  ? Container()
                  : Column(
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
                                  'images/poke-bowl-221-1550260964.jpg',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                )),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Poke(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Ahi Poke Bowl'
                                        : 'آهي بوك بول',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 56;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              SummerPageState.milonfav == false
                  ? Container()
                  : Column(
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
                                  'images/1496940030-delish-melon-prosciutto-skewers-pin-022.jpg',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                )),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Milon(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Melon Prosciutto Skewers'
                                        : 'أسياخ البطيخ Prosciutto',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 57;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              SummerPageState.pennefav == false
                  ? Container()
                  : Column(
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
                                  'images/1435157108-weeknight-dinners-penne.jpg',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                )),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Penne(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Penne With Summer Veggies'
                                        : 'بيني مع الخضار الصيفية',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 58;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              SummerPageState.summerrolesfav == false
                  ? Container()
                  : Column(
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
                                  'images/Vietnamese-articleLarge-v3.jpg',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                )),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: SummerPage(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Summer Rolls'
                                        : 'لفات الصيف',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 59;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              PregnantState.pooridgefav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Porridge(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 60;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              PregnantState.bananafav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Banana(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 61;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              PregnantState.smashedfav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Smashed(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 62;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              PregnantState.bakedfav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Baked(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 63;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              PregnantState.pestofav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Pesto(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 64;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              PregnantState.herpfav == false
                  ? Container()
                  : Column(
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
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Herp(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
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
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 65;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    ),
              EgyptionPageState.flafelfav == false
                  ? Container()
                  : Column(
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
                                child: Image.asset('images/flafel.jpg')),
                            Positioned(
                              bottom: 20,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: Flafel(),
                                              type: PageTransitionType
                                                  .rightToLeftWithFade));
                                    });
                                  },
                                  child: Text(
                                    HomePageState.arabicvalue == false
                                        ? 'Falafel'
                                        : 'فلافل',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width*0.05444, color: Colors.white),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.6)),
                                child: InkWell(
                                    onTap: () {
                                      id = 66;
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: Video(),
                                                type: PageTransitionType
                                                    .rightToLeftWithFade));
                                      });
                                    },
                                    child: Icon(
                                      Icons.video_camera_back_sharp,
                                      color: Colors.green,
                                      size: 35,
                                    )),
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
                      ],
                    )
            ],
          )),
    );
  }
}
