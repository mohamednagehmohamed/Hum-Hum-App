import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:mealapplication/homepage.dart';
import 'package:mealapplication/modules/showbunnerid.dart';
import 'package:mealapplication/screens/asian.dart';
import 'package:mealapplication/screens/breakfast.dart';
import 'package:mealapplication/screens/egyption.dart';
import 'package:mealapplication/screens/exotic.dart';
import 'package:mealapplication/screens/filters.dart';
import 'package:mealapplication/screens/french.dart';
import 'package:mealapplication/screens/german.dart';
import 'package:mealapplication/screens/help.dart';
import 'package:mealapplication/screens/italian.dart';
import 'package:mealapplication/screens/light.dart';
import 'package:mealapplication/screens/pregnant.dart';
import 'package:mealapplication/screens/quick.dart';
import 'package:mealapplication/screens/summer.dart';

import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

//import 'package:newgame/homepage.dart';

//import 'package:mygame/homepage.dart';

void main() {
  runApp(Splash());
}

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  static bool myval = false;
  static bool myarabicval = false;
  static bool myhamburg = false;
  static bool mytoast = false;
  static bool myspagitti = false;
  static bool mysalmon = false;

  bool ishovered = false;
  late AnimationController controller;
  late Animation animation;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3))
          ..repeat();
    animation = Tween(begin: Size(100, 150), end: Size(100, 250))
        .animate(CurvedAnimation(parent: controller, curve: Curves.linear));

    /* controller.addListener(() {
      setState(() {});
    });*/
    //ShowBunnerID.loadbunner();
  }
  @override
  void dispose(){
    super.dispose();
    ShowBunnerID.disposebunner();
  }
  void onentered(bool ishovered) {
    setState(() {
      this.ishovered = ishovered;
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
                                      child: Splash(),
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
    final hoveredtransform = Matrix4.identity()..scale(1.3);
    final transform = ishovered ? hoveredtransform : Matrix4.identity();
    //double mysize = 100;
    return WillPopScope(
        onWillPop: onBackButton,
        child: Scaffold(
          body: Container(
            alignment: Alignment.bottomCenter,
            child:
                /* AnimatedBuilder(
                  animation: controller,
                  builder: (ctx, child) => Transform.rotate(
                        angle: controller.value * 2 * pi,
                        child: Image.asset('images/meal.png'),
                      )),
              SizedBox(
                height: 50,
              ),
              MaterialButton(
                color: Color(0xff3C318D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () async {
                  SharedPreferences pref =
                      await SharedPreferences.getInstance();
                  setState(() {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: HomePage(),
                            type: PageTransitionType.bottomToTop));
                    myval = pref.getBool('notification') ?? true;
                    HomePageState.arabicvalue = pref.getBool('arabic') ?? true;
                    HomePageState.arabicvalue = pref.getBool('dark') ?? true;
                    ItalianPageState.favouiretspagitti =
                        pref.getBool('favouiretspagitti') ?? true;
                    ItalianPageState.favouiretlazania =
                        pref.getBool('favouiretlazania') ?? true;
                    ItalianPageState.favouiretbotterga =
                        pref.getBool('favouiretbotterga') ?? true;
                    ItalianPageState.favouiretspagitti =
                        pref.getBool('favouiretspagitti') ?? true;
                    ItalianPageState.favouiretspagitti =
                        pref.getBool('favouiretspagitti') ?? true;
                    EgyptionPageState.kosharifav =
                        pref.getBool('koshri') ?? true;
                    QuickPageState.favouirethamburg =
                        pref.getBool('favouirethamburg') ?? true;
                    QuickPageState.favouirettoast =
                        pref.getBool('favouirettoast') ?? true;
                    QuickPageState.favouiretspagitti =
                        pref.getBool('favouiretspagitti') ?? true;
                    QuickPageState.favouiretsalmon =
                        pref.getBool('favouiretsalmon') ?? true;
                  });
                },
                child: Text(
                  HomePageState.arabicvalue == false ? 'Start' : 'أبدأ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),*/
                AnimatedContainer(
              duration: Duration(microseconds: 200),
              transform: transform,
              child:   MaterialButton(
                color: Color(0xff3C318D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () async {
                  SharedPreferences pref =
                      await SharedPreferences.getInstance();
                  setState(() {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: HomePage(),
                            type: PageTransitionType.bottomToTop));
                    HomePageState.notificationval =
                        pref.getBool('notification') ?? true;
                    HomePageState.arabicvalue = pref.getBool('arabic') ?? true;
                    HomePageState.arabicvalue = pref.getBool('dark') ?? true;
                    FiltersState.veganvalue = pref.getBool('vegan') ?? true;
                    FiltersState.notvegetraintvalue =
                        pref.getBool('notvegetrain') ?? true;
                    FiltersState.allvalue = pref.getBool('all') ?? true;
                    ItalianPageState.favouiretspagitti =
                        pref.getBool('favouiretspagitti') ?? true;
                    ItalianPageState.favouiretlazania =
                        pref.getBool('favouiretlazania') ?? true;
                    ItalianPageState.favouiretbotterga =
                        pref.getBool('favouiretbotterga') ?? true;
                    ItalianPageState.favouiretspagitti =
                        pref.getBool('favouiretspagitti') ?? true;
                    ItalianPageState.favouiretspagitti =
                        pref.getBool('favouiretspagitti') ?? true;
                    EgyptionPageState.kosharifav =
                        pref.getBool('koshri') ?? true;
                    EgyptionPageState.lentilefav =
                        pref.getBool('lentile') ?? true;
                    EgyptionPageState.fattahfav =
                        pref.getBool('fattah') ?? true;
                    EgyptionPageState.foulfav = pref.getBool('foul') ?? true;
                    EgyptionPageState.hummusfav =
                        pref.getBool('hummus') ?? true;
                    EgyptionPageState.flafelfav =
                        pref.getBool('flafel') ?? true;
                    QuickPageState.favouirethamburg =
                        pref.getBool('favouirethamburg') ?? true;
                    QuickPageState.favouirettoast =
                        pref.getBool('favouirettoast') ?? true;
                    QuickPageState.favouiretspagitti =
                        pref.getBool('favouiretspagitti') ?? true;
                    QuickPageState.favouiretsalmon =
                        pref.getBool('favouiretsalmon') ?? true;
                    QuickPageState.favouiretpan = pref.getBool('pan') ?? true;
                    QuickPageState.favouiretcheese =
                        pref.getBool('cheese') ?? true;
                    QuickPageState.corirustfav =
                        pref.getBool('corirust') ?? true;
                    QuickPageState.schentizefav =
                        pref.getBool('schentize') ?? true;
                    QuickPageState.barbeciofav =
                        pref.getBool('barbecio') ?? true;
                    QuickPageState.buchafav = pref.getBool('bucha') ?? true;
                    QuickPageState.misofav = pref.getBool('msio') ?? true;
                    QuickPageState.syrflafelfav =
                        pref.getBool('syrflafel') ?? true;
                    GermanPageState.brotfav = pref.getBool('brot') ?? true;
                    GermanPageState.ketchesfav =
                        pref.getBool('ketches') ?? true;
                    GermanPageState.corirustfav =
                        pref.getBool('corirust') ?? true;
                    GermanPageState.rodalinefav =
                        pref.getBool('rodaline') ?? true;
                    GermanPageState.schentizefav =
                        pref.getBool('schentize') ?? true;
                    GermanPageState.suerbratenfav =
                        pref.getBool('suerbraten') ?? true;
                    BreakfastPageState.salmonfav =
                        pref.getBool('salmon') ?? true;
                    BreakfastPageState.scraeggfav =
                        pref.getBool('scraegg') ?? true;
                    BreakfastPageState.chilafav = pref.getBool('chila') ?? true;
                    BreakfastPageState.handpiesfav =
                        pref.getBool('handpies') ?? true;
                    BreakfastPageState.shakshokafav =
                        pref.getBool('shakshoka') ?? true;
                    BreakfastPageState.granolafav =
                        pref.getBool('granola') ?? true;
                    LightPageState.soflakifav = pref.getBool('soflaki') ?? true;
                    LightPageState.barbeciofav =
                        pref.getBool('barbecio') ?? true;
                    LightPageState.tomatoslamifav =
                        pref.getBool('tomatoslami') ?? true;
                    LightPageState.mushromfav = pref.getBool('mushrom') ?? true;
                    LightPageState.buchafav = pref.getBool('bucha') ?? true;
                    LightPageState.misofav = pref.getBool('miso') ?? true;
                    ExoticPageState.shawrmafav =
                        pref.getBool('shawrma') ?? true;
                    ExoticPageState.manakishfav =
                        pref.getBool('manakish') ?? true;
                    ExoticPageState.syrflafelfav =
                        pref.getBool('syrflafel') ?? true;
                    ExoticPageState.yabrakfav = pref.getBool('yabrak') ?? true;
                    ExoticPageState.maklopafav =
                        pref.getBool('maklopa') ?? true;
                    ExoticPageState.shishfav = pref.getBool('shish') ?? true;
                    AsianPageState.clahumborgfav =
                        pref.getBool('clahumborg') ?? true;
                    AsianPageState.tsofav = pref.getBool('tso') ?? true;
                    AsianPageState.beeffav = pref.getBool('beef') ?? true;
                    AsianPageState.slawfav = pref.getBool('slaw') ?? true;
                    AsianPageState.gadofav = pref.getBool('gado') ?? true;
                    AsianPageState.noodlefav = pref.getBool('noodle') ?? true;
                    FrenchPageState.souflifav = pref.getBool('soufli') ?? true;
                    FrenchPageState.soupfav = pref.getBool('soup') ?? true;
                    FrenchPageState.cassouletfav =
                        pref.getBool('cassoulet') ?? true;
                    FrenchPageState.bourgnionfav =
                        pref.getBool('bourgnion') ?? true;
                    FrenchPageState.tartifav = pref.getBool('tarti') ?? true;
                    SummerPageState.asparagosfav =
                        pref.getBool('asparagos') ?? true;
                    SummerPageState.deliciousfav =
                        pref.getBool('delicious') ?? true;
                    SummerPageState.pokefav = pref.getBool('poke') ?? true;
                    SummerPageState.milonfav = pref.getBool('milon') ?? true;
                    SummerPageState.pennefav = pref.getBool('penne') ?? true;
                    SummerPageState.summerrolesfav =
                        pref.getBool('summerroles') ?? true;
                    PregnantState.pooridgefav =
                        pref.getBool('pooridge') ?? true;
                    PregnantState.bananafav = pref.getBool('banana') ?? true;
                    PregnantState.smashedfav = pref.getBool('smashed') ?? true;
                    PregnantState.bakedfav = pref.getBool('baked') ?? true;
                    PregnantState.pestofav = pref.getBool('pesto') ?? true;
                    PregnantState.herpfav = pref.getBool('herp') ?? true;
                  });
                },
                child: Text(
                  HomePageState.arabicvalue == false ? 'Start' : 'أبدأ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage('images/mysplash.jpg'),
                    fit: BoxFit.fill)),
          ),
        ));
    /*Container(
          alignment: Alignment.bottomCenter,
          child:
              /* AnimatedBuilder(
                  animation: controller,
                  builder: (ctx, child) => Transform.rotate(
                        angle: controller.value * 2 * pi,
                        child: Image.asset('images/meal.png'),
                      )),
              SizedBox(
                height: 50,
              ),
              MaterialButton(
                color: Color(0xff3C318D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () async {
                  SharedPreferences pref =
                      await SharedPreferences.getInstance();
                  setState(() {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: HomePage(),
                            type: PageTransitionType.bottomToTop));
                    myval = pref.getBool('notification') ?? true;
                    HomePageState.arabicvalue = pref.getBool('arabic') ?? true;
                    HomePageState.arabicvalue = pref.getBool('dark') ?? true;
                    ItalianPageState.favouiretspagitti =
                        pref.getBool('favouiretspagitti') ?? true;
                    ItalianPageState.favouiretlazania =
                        pref.getBool('favouiretlazania') ?? true;
                    ItalianPageState.favouiretbotterga =
                        pref.getBool('favouiretbotterga') ?? true;
                    ItalianPageState.favouiretspagitti =
                        pref.getBool('favouiretspagitti') ?? true;
                    ItalianPageState.favouiretspagitti =
                        pref.getBool('favouiretspagitti') ?? true;
                    EgyptionPageState.kosharifav =
                        pref.getBool('koshri') ?? true;
                    QuickPageState.favouirethamburg =
                        pref.getBool('favouirethamburg') ?? true;
                    QuickPageState.favouirettoast =
                        pref.getBool('favouirettoast') ?? true;
                    QuickPageState.favouiretspagitti =
                        pref.getBool('favouiretspagitti') ?? true;
                    QuickPageState.favouiretsalmon =
                        pref.getBool('favouiretsalmon') ?? true;
                  });
                },
                child: Text(
                  HomePageState.arabicvalue == false ? 'Start' : 'أبدأ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),*/
              AnimatedBuilder(
            animation: controller,
            builder: (ctx, child) => Transform.rotate(
              angle: controller.value * 2 * pi,
              child: MaterialButton(
                color: Color(0xff3C318D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () async {
                  SharedPreferences pref =
                      await SharedPreferences.getInstance();
                  setState(() {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: HomePage(),
                            type: PageTransitionType.bottomToTop));
                    myval = pref.getBool('notification') ?? true;
                    HomePageState.arabicvalue = pref.getBool('arabic') ?? true;
                    HomePageState.arabicvalue = pref.getBool('dark') ?? true;
                    ItalianPageState.favouiretspagitti =
                        pref.getBool('favouiretspagitti') ?? true;
                    ItalianPageState.favouiretlazania =
                        pref.getBool('favouiretlazania') ?? true;
                    ItalianPageState.favouiretbotterga =
                        pref.getBool('favouiretbotterga') ?? true;
                    ItalianPageState.favouiretspagitti =
                        pref.getBool('favouiretspagitti') ?? true;
                    ItalianPageState.favouiretspagitti =
                        pref.getBool('favouiretspagitti') ?? true;
                    EgyptionPageState.kosharifav =
                        pref.getBool('koshri') ?? true;
                    EgyptionPageState.lentilefav =
                        pref.getBool('lentile') ?? true;
                    EgyptionPageState.fattahfav =
                        pref.getBool('fattah') ?? true;
                    EgyptionPageState.foulfav = pref.getBool('foul') ?? true;
                    EgyptionPageState.hummusfav =
                        pref.getBool('hummus') ?? true;
                    EgyptionPageState.flafelfav =
                        pref.getBool('flafel') ?? true;
                    QuickPageState.favouirethamburg =
                        pref.getBool('favouirethamburg') ?? true;
                    QuickPageState.favouirettoast =
                        pref.getBool('favouirettoast') ?? true;
                    QuickPageState.favouiretspagitti =
                        pref.getBool('favouiretspagitti') ?? true;
                    QuickPageState.favouiretsalmon =
                        pref.getBool('favouiretsalmon') ?? true;
                    QuickPageState.favouiretpan = pref.getBool('pan') ?? true;
                    QuickPageState.favouiretcheese =
                        pref.getBool('cheese') ?? true;
                    GermanPageState.brotfav = pref.getBool('brot') ?? true;
                    BreakfastPageState.salmonfav =
                        pref.getBool('salmon') ?? true;
                  });
                },
                child: Text(
                  HomePageState.arabicvalue == false ? 'Start' : 'أبدأ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage('images/mysplash.jpg'),
                  fit: BoxFit.fill)),
        ),*/
  }
}
