//import 'dart:ui';

/*import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:mealapplication/homepage.dart';

import 'package:mealapplication/widgets/splash.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(Location());
}

class Location extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LocationState();
  }
}

class LocationState extends State<Location> {
  late RiveAnimationController riveAnimationController;
  @override
  void initState() {
    super.initState();
    riveAnimationController = OneShotAnimation(
      'bounce',
      autoplay: false,
    );
    //controller = MenuController(vsync: this);
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
                HomePageState.arabicvalue == false ? 'Location' : 'الموقع',
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
                    color: Colors.deepPurple
                    /*gradient: LinearGradient(colors: [
                    Colors.pinkAccent,
                    Colors.deepPurple,
                    Colors.pinkAccent
                  ])*/
                    ),
              ),
            ),
            body: 
            /* Container(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on_sharp,
                  size: 50,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  HomePageState.arabicvalue == false
                      ? 'Get User Location'
                      : 'احصل على موقع المستخدم',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(''),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  color: Color(0xff3C318D),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () async {
                    setState(() {
                      
                    });
                  },
                  child: Text(
                    HomePageState.arabicvalue == false
                        ? 'Get Location'
                        : 'معرفة الموقع',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: ExactAssetImage('images/loc.jpg'),
                    fit: BoxFit.fill)),
          ),*/
            ));*/

