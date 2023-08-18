//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:mealapplication/modules/floatingbutton.dart';
import 'package:mealapplication/modules/showinterstial.dart';


import '../homepage.dart';

/*void main() {
  runApp(Help());
}*/

class Help extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HelpState();
  }
}

class HelpState extends State<Help> {
  @override
  void initState() {
    super.initState();
     ShowInterstial.showinterstialid();
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
                ? 'Information about the application'
                : 'معلومات عن التطبيق',
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
        body: RichText(
            text: TextSpan(children: [
          TextSpan(
              text: HomePageState.arabicvalue == false
                  ? 'Through this application you can learn the meals that are eaten all over the world'
                  : ' من خلال هذا التطبيق تستطيع تعلم الوجبات التي تؤكل في جميع أنحاء العالم',
              style: TextStyle(
                  fontSize: 22,
                  color: HomePageState.darkmode == false
                      ? Colors.black
                      : Colors.white)),
          TextSpan(
              text: HomePageState.arabicvalue == false
                  ? 'At first, an explanatory video of the application developer appears, then a set of images appear that shows what is inside the application of meals'
                  : 'في البداية يظهر لك فيديو توضيحي لمطور التطبيق ثم تظهر مجموعه من الصور التي توضح ما بداخل التطبيق من وجبات',
              style: TextStyle(
                  fontSize: 22,
                  color: HomePageState.darkmode == false
                      ? Colors.black
                      : Colors.white)),
          TextSpan(
              text: HomePageState.arabicvalue == false
                  ? 'The main page of the application appears, and through it you can browse and access all meals classified as meals for countries'
                  : 'تظهر الصفحه الرئيسيه للتطبيق ومن خلالها تستطيع التصفح والدخول الي جميع الوجبات المصنفه الي وجبات الدول',
              style: TextStyle(
                  fontSize: 22,
                  color: HomePageState.darkmode == false
                      ? Colors.black
                      : Colors.white)),
          TextSpan(
              text: HomePageState.arabicvalue == false
                  ? 'You can add any meal to your favorites for easy access'
                  : 'تستطيع اضافة اي وجبه الي المفضلة للوصول اليها بسهوله ',
              style: TextStyle(
                  fontSize: 22,
                  color: HomePageState.darkmode == false
                      ? Colors.black
                      : Colors.white)),
          TextSpan(
              text: HomePageState.arabicvalue == false
                  ? 'On the main page, you can access the side menu and through it you can change the language you want, Arabic or English, filter meals, get notifications, search for any meal you want, in addition to activating the night system'
                  : 'في الصفحه الرئيسيه تستطيع الوصول الي القائمه الجانبيه ومن خلالها تستطيع تغير اللغه التي تريدها عربي او انجليزي وتصفية الوجبات والحصول علي الاشعارات والبحث عن اي وجبه تريدها بالاضافه الي تفعيل النظام الليلي',
              style: TextStyle(
                  fontSize: 22,
                  color: HomePageState.darkmode == false
                      ? Colors.black
                      : Colors.white)),
        ])),
      ),
    );
  }
}
