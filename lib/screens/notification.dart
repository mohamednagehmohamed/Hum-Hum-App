//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:page_transition/page_transition.dart';

import '../homepage.dart';

/*void main() {
  runApp(MyNotification());
}*/

class MyNotification extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyNotificationState();
  }
}

class MyNotificationState extends State<MyNotification> {
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  @override
  void initState() {
    super.initState();
    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    var android = new AndroidInitializationSettings("@mipmap/launcher_icon");
    var ios = new IOSInitializationSettings();
    var initsettings = new InitializationSettings(android: android, iOS: ios);
    flutterLocalNotificationsPlugin.initialize(initsettings,
        onSelectNotification: selectnotification);
  }

  Future selectnotification(String? paylod) async {
    Navigator.push(
        context,
        PageTransition(
            child: HomePage(), type: PageTransitionType.bottomToTop));
  }

  shownotification() {
    var android = AndroidNotificationDetails("Channel ID", "Channel Name",
        priority: Priority.high);
    var ios = IOSNotificationDetails();
    var platform = new NotificationDetails(android: android, iOS: ios);
    flutterLocalNotificationsPlugin.show(
        0,
        HomePageState.arabicvalue == false ? 'Hum Hum App' : 'تطبيق هم هم',
        HomePageState.arabicvalue == false
            ? 'Check New Meal,You Can Learn It And Cook it easy'
            : 'تحقق من وجبة جديدة ، يمكنك تعلمها وطهيها بسهولة',
        platform,
        payload: "Send Message Man");
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
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          toolbarHeight: 70,
          title: Text(
            HomePageState.arabicvalue == false
                ? 'Notification display page'
                : 'صفحة عرض الاشعارات',
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
        body: Column(
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
                      shownotification();
                    });
                  },
                  child: Text(
                    HomePageState.arabicvalue == false
                        ? 'Show Notification '
                        : ' عرض الاشعارات',
                    style: TextStyle(fontSize: 22, color: Colors.amber),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
