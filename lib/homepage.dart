//import 'dart:async';
//import 'dart:math';

//import 'dart:ffi';
//import 'package:residemenu/residemenu.dart';
import 'dart:math';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mealapplication/modules/floatingbutton.dart';



import 'package:mealapplication/screens/favouiret.dart';
import 'package:mealapplication/screens/filters.dart';

import 'package:mealapplication/screens/help.dart';

import 'package:mealapplication/screens/notification.dart';

import 'package:mealapplication/screens/search.dart';

import 'package:mealapplication/widgets/categoryscreen.dart';
import 'package:page_transition/page_transition.dart';



import 'package:shared_preferences/shared_preferences.dart';

import 'modules/showinterstial.dart';

//import 'package:residemenu/residemenu.dart';
//import 'package:mealapplication/widgets/maindrawer.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  //late MenuController controller;
  static bool arabicvalue = false;
  static bool notificationval = false;
  static bool darkmode = false;
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  final mydata = [
    HomePageState.arabicvalue == false
        ? 'Check Italian Meals,You Can Learn It And Cook it easy'
        : 'تحقق من الوجبات الايطاليه ، يمكنك تعلمها وطهيها بسهولة',
    HomePageState.arabicvalue == false
        ? 'Check Quick Meals,You Can Learn It And Cook it easy'
        : 'تحقق من الوجبات السريعه ، يمكنك تعلمها وطهيها بسهولة',
    HomePageState.arabicvalue == false
        ? 'Check Egyption Meals,You Can Learn It And Cook it easy'
        : 'تحقق من الوجبات المصريه ، يمكنك تعلمها وطهيها بسهولة',
    HomePageState.arabicvalue == false
        ? 'Check German Meals,You Can Learn It And Cook it easy'
        : 'تحقق من الوجبات الالمانيه ، يمكنك تعلمها وطهيها بسهولة',
    HomePageState.arabicvalue == false
        ? 'Check Asian Meals,You Can Learn It And Cook it easy'
        : 'تحقق من الوجبات الاسيويه ، يمكنك تعلمها وطهيها بسهولة',
    HomePageState.arabicvalue == false
        ? 'Check Syrian Meals,You Can Learn It And Cook it easy'
        : 'تحقق من الوجبات السوريه ، يمكنك تعلمها وطهيها بسهولة',
    HomePageState.arabicvalue == false
        ? 'Check Summer Meals,You Can Learn It And Cook it easy'
        : 'تحقق من الوجبات الصيفية ، يمكنك تعلمها وطهيها بسهولة',
    HomePageState.arabicvalue == false
        ? 'Check Pregnant Meals,You Can Learn It And Cook it easy'
        : 'تحقق من الوجبات الحوامل ، يمكنك تعلمها وطهيها بسهولة',
    HomePageState.arabicvalue == false
        ? 'Check French Meals,You Can Learn It And Cook it easy'
        : 'تحقق من الوجبات فرنسيه ، يمكنك تعلمها وطهيها بسهولة',
    HomePageState.arabicvalue == false
        ? 'Check Beautiful Meals,You Can Learn It And Cook it easy'
        : 'تحقق من الوجبات الجميلة ، يمكنك تعلمها وطهيها بسهولة',
  ];
  int myrandom = Random().nextInt(11);
  setnotification() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('notification', notificationval);
  }

  setlanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('arabic', arabicvalue);
  }

  setsarkmode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('dark', darkmode);
  }

  showtoastenglish() {
    Fluttertoast.showToast(
        msg:
            "Through this application, you can learn to make meals that are eaten all over the world🍖",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  showtoastarabic() {
    Fluttertoast.showToast(
        msg:
            "من خلال هذا التطبيق تستطيع تعلم عمل الوجبات التي تؤكل في جميع أنحاء العالم🍖",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  shownotificationadd() async {
    await Flushbar(
      textDirection: HomePageState.arabicvalue == false
          ? TextDirection.ltr
          : TextDirection.rtl,
      title: HomePageState.arabicvalue == false
          ? 'Hum Hum Application'
          : 'تطبيق هم هم',
      message: HomePageState.arabicvalue == false
          ? 'Notifications have been activated'
          : 'لقد تم تفعيل الاشعارات',
      icon: Icon(
        Icons.info_rounded,
        color: Colors.green,
      ),
      duration: Duration(seconds: 3),
    ).show(context);
  }

  shownotificationdelete() async {
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
          ? 'Notifications have been Canceled'
          : 'لقد تم الغاء الاشعارات',
      messageColor: Colors.black,
      icon: Icon(
        Icons.info_rounded,
        color: Colors.red,
      ),
      duration: Duration(seconds: 3),
    ).show(context);
  }

  showdarkadd() async {
    await Flushbar(
      textDirection: HomePageState.arabicvalue == false
          ? TextDirection.ltr
          : TextDirection.rtl,
      title: HomePageState.arabicvalue == false
          ? 'Hum Hum Application'
          : 'تطبيق هم هم',
      message: HomePageState.arabicvalue == false
          ? 'Dark Mode have been activated'
          : 'لقد تم تفعيل النظام الليلي',
      icon: Icon(
        Icons.info_rounded,
        color: Colors.green,
      ),
      duration: Duration(seconds: 3),
    ).show(context);
  }

  showdarkdelete() async {
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
          ? 'Dark Mode have been Canceled'
          : 'لقد تم الغاء النظام الليلي',
      messageColor: Colors.black,
      icon: Icon(
        Icons.info_rounded,
        color: Colors.red,
      ),
      duration: Duration(seconds: 3),
    ).show(context);
  }

  showarabicadd() async {
    await Flushbar(
      textDirection: HomePageState.arabicvalue == false
          ? TextDirection.ltr
          : TextDirection.rtl,
      title: HomePageState.arabicvalue == false
          ? 'Hum Hum Application'
          : 'تطبيق هم هم',
      message: HomePageState.arabicvalue == false
          ? 'Arabic Language have been activated'
          : 'لقد تم تفعيل اللغة العربية',
      icon: Icon(
        Icons.info_rounded,
        color: Colors.green,
      ),
      duration: Duration(seconds: 3),
    ).show(context);
  }

  showarabicdelete() async {
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
          ? 'Arabic Language have been disabled'
          : 'تم الغاء تفعيل اللغه العربيه',
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
    arabicvalue == false ? showtoastenglish() : showtoastarabic();
   // controller = MenuController(vsync: this);
    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    var android = new AndroidInitializationSettings("@mipmap/launcher_icon");
    var ios = new IOSInitializationSettings();
    var initsettings = new InitializationSettings(android: android, iOS: ios);
    flutterLocalNotificationsPlugin.initialize(initsettings,
        onSelectNotification: selectnotification);
    if (notificationval == true) {
      shownotification();
      //Future.delayed(Duration(minutes: 2), () => shownotification());
      //flutterLocalNotificationsPlugin.cancel(0);
    } else {
      print('No Notifications Availabled');
    }
     ShowInterstial.loadinteristial();
  }

  Future selectnotification(String? paylod) async {
   /* if (mydata[myrandom].contains('Italian')) {
      Navigator.push(
          context,
          PageTransition(
              child: ItalianPage(), type: PageTransitionType.bottomToTop));
    } else if (mydata[myrandom].contains('Quick')) {
      Navigator.push(
          context,
          PageTransition(
              child: QuickPage(), type: PageTransitionType.bottomToTop));
    } else if (mydata[myrandom].contains('Egyption')) {
      Navigator.push(
          context,
          PageTransition(
              child: EgyptionPage(), type: PageTransitionType.bottomToTop));
    } else if (mydata[myrandom].contains('German')) {
      Navigator.push(
          context,
          PageTransition(
              child: GermanPage(), type: PageTransitionType.bottomToTop));
    } else if (mydata[myrandom].contains('Asian')) {
      Navigator.push(
          context,
          PageTransition(
              child: AsianPage(), type: PageTransitionType.bottomToTop));
    } else if (mydata[myrandom].contains('Syrian')) {
      Navigator.push(
          context,
          PageTransition(
              child: ExoticPage(), type: PageTransitionType.bottomToTop));
    } else if (mydata[myrandom].contains('Summer')) {
      Navigator.push(
          context,
          PageTransition(
              child: SummerPage(), type: PageTransitionType.bottomToTop));
    } else if (mydata[myrandom].contains('Pregnant')) {
      Navigator.push(
          context,
          PageTransition(
              child: Pregnant(), type: PageTransitionType.bottomToTop));
    } else if (mydata[myrandom].contains('French')) {
      Navigator.push(
          context,
          PageTransition(
              child: FrenchPage(), type: PageTransitionType.bottomToTop));
    } else if (mydata[myrandom].contains('Beautiful')) {
      Navigator.push(
          context,
          PageTransition(
              child: LightPage(), type: PageTransitionType.bottomToTop));
    }*/
    Navigator.push(
        context,
        PageTransition(
            child: HomePage(), type: PageTransitionType.bottomToTop));
  }

  shownotification() {
    var android = AndroidNotificationDetails("Channel ID", "Channel Name",
        priority: Priority.high,
        importance: Importance.max,
        playSound: true,
        
        enableVibration: true);
    var ios = IOSNotificationDetails();
    var platform = new NotificationDetails(android: android, iOS: ios);
    /* flutterLocalNotificationsPlugin.show(
        0,
        HomePageState.arabicvalue == false ? 'Hum Hum App' : 'تطبيق هم هم',
        HomePageState.arabicvalue == false
            ? 'Check New Meal,You Can Learn It And Cook it easy'
            : 'تحقق من وجبة جديدة ، يمكنك تعلمها وطهيها بسهولة',
        platform,
        payload: "Send Message Man");*/
    flutterLocalNotificationsPlugin.periodicallyShow(
        0,
        HomePageState.arabicvalue == false ? 'Hum Hum App' : 'تطبيق هم هم',
        HomePageState.arabicvalue == false
        ? 'Check Best Meals,You Can Learn It And Cook it easy'
        : 'تحقق من أجمل الوجبات  ، يمكنك تعلمها وطهيها بسهولة',
        /* HomePageState.arabicvalue == false
            ? 'Check New Meal,You Can Learn It And Cook it easy'
            : 'تحقق من وجبة جديدة ، يمكنك تعلمها وطهيها بسهولة',*/
        RepeatInterval.hourly,
        platform);
  }

  @override
  Widget build(BuildContext context) {
    final myfontsize = MediaQuery.of(context).size.width * 0.09;
    final myfontsize2 = MediaQuery.of(context).size.width * 0.06;
    return Directionality(
      textDirection:
          arabicvalue == false ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        // backgroundColor: Color(0xffbc6ad9),
        backgroundColor: darkmode == false ? Colors.white : Colors.black,
        drawerScrimColor: Colors.blueGrey,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          shape: MyFloatingButton(),
          onPressed: () {
            setState(() {
              Navigator.push(
                  context,
                  PageTransition(
                      child: Favouirts(),
                      type: PageTransitionType.rightToLeft));
            });
          },
          child: Icon(
            Icons.star_border_outlined,
            color: Colors.yellow,
            size: 30,
          ),
        ),
        drawer: Drawer(
        
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.all(15),
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(color: Colors.deepPurple
                        /* gradient: LinearGradient(colors: [
                      Colors.deepPurple,
                      Colors.purple,
                      Colors.deepPurple
                    ])*/
                        ),
                    child: 
                     Text(
                      arabicvalue == false
                      ? 'Cockies UP !!'
                      : 'عالم الطبخ !!',
                      style: TextStyle(
                      fontSize: myfontsize,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                    ),
                    ),
                SizedBox(
                  height: 2,
                ),
                Center(
                  child: Text(
                    arabicvalue == false ? 'Settings' : 'إعدادات',
                    style: TextStyle(
                        fontSize: myfontsize,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    arabicvalue == false ? 'Dark Mode' : 'النظام الليلي',
                    style: TextStyle(
                        fontSize: myfontsize2,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  leading: Image.asset('images/dark.png'),
                  /*Icon(
                    Icons.dark_mode,
                    color: Colors.black,
                  ),*/
                  trailing: CupertinoSwitch(
                      activeColor: Colors.green,
                      trackColor: Colors.grey,
                      value: darkmode,
                      onChanged: (value) {
                        setState(() {
                          darkmode = value;
                          setsarkmode();
                          darkmode == true ? showdarkadd() : showdarkdelete();
                          
                        });
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  onTap: () {
                    setState(() {});
                  },
                  title: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: MyNotification(),
                                type: PageTransitionType.rightToLeft));
                      });
                    },
                    child: Text(
                      arabicvalue == false ? 'Notifications' : 'إشعارات',
                      style: TextStyle(
                          fontSize: myfontsize2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  leading: Image.asset('images/noti.png'),
                  /*Icon(
                    Icons.notifications,
                    color: Colors.black,
                  ),*/
                  trailing: CupertinoSwitch(
                      activeColor: Colors.green,
                      trackColor: Colors.grey,
                      value: notificationval,
                      onChanged: (value) {
                        setState(() {
                          notificationval = value;
                          setnotification();
                          notificationval == true
                              ? shownotificationadd()
                              : shownotificationdelete();
                        });
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    arabicvalue == false ? 'Arabic' : 'عربي',
                    style: TextStyle(
                        fontSize: myfontsize2,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  leading: Image.asset('images/language.png'),
                  /*Icon(
                    Icons.language,
                    color: Colors.black,
                  ),*/
                  trailing: CupertinoSwitch(
                      activeColor: Colors.green,
                      trackColor: Colors.grey,
                      value: arabicvalue,
                      onChanged: (value) {
                        setState(() {
                          arabicvalue = value;
                          setlanguage();
                          arabicvalue == true
                              ? showarabicadd()
                              : showarabicdelete();
                        });
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                    title: InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: Filters(),
                                  type: PageTransitionType.rightToLeft));
                        });
                      },
                      child: Text(
                        arabicvalue == false
                            ? 'Filter Meals'
                            : ' تصفية الوجبات',
                        style: TextStyle(
                            fontSize: myfontsize2,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    leading: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: Filters(),
                                  type: PageTransitionType.rightToLeft));
                                  ShowInterstial.showinterstialid();
                        });
                      },
                      child: Image.asset('images/icons8-filter.gif'),
                    ) /*IconButton(
                      onPressed: () {
                        setState(() {
                           Navigator.push(
                              context,
                              PageTransition(
                                  child: Location(),
                                  type: PageTransitionType.rightToLeft));
                        });
                      },
                      icon: Icon(
                        Icons.location_city,
                        color: Colors.black,
                      )),*/
                    ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: Search(),
                                type: PageTransitionType.rightToLeft));
                      });
                    },
                    child: Text(
                      arabicvalue == false ? 'Search' : 'البحث',
                      style: TextStyle(
                          fontSize: myfontsize2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  leading: Image.asset(
                      'images/search.gif'), /*Icon(
                    Icons.search,
                    color: Colors.black,
                  ),*/
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: Help(),
                                type: PageTransitionType.rightToLeft));
                      });
                    },
                    child: Text(
                      arabicvalue == false
                          ? 'Information about App'
                          : 'معلومات عن التطبيق',
                      style: TextStyle(
                          fontSize: myfontsize2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  leading: Image.asset(
                      'images/myhelp.gif'), /*Icon(
                    Icons.search,
                    color: Colors.black,
                  ),*/
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: GestureDetector(
                    onTap: () {
                      setState(() {
                        SystemNavigator.pop();
                      });
                    },
                    child: Text(
                      arabicvalue == false ? 'Log Out' : 'الخروج',
                      style: TextStyle(
                          fontSize: myfontsize2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  leading: Image.asset(
                      'images/exit.png'), /*Icon(
                    Icons.logout,
                    color: Colors.black,
                  ),*/
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          toolbarHeight: 70,
          title: Text(
            arabicvalue == false ? 'Hum Hum App' : 'تطبيق هم هم',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: Colors.deepPurple
                /*gradient: LinearGradient(
                    colors: [Colors.purple, Colors.deepPurple, Colors.purple])*/
                ),
          ),
        ),
        body: CategoryScreen(),
      ),
    );
  }
}
