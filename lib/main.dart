


import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'package:mealapplication/screens/start.dart';
import 'package:provider/provider.dart';

import 'modules/admanager.dart';




void main() {
 WidgetsFlutterBinding.ensureInitialized();
  //MobileAds.instance.initialize();
  final adinitialize=MobileAds.instance.initialize();
 final admanager=AdsManager(initialization: adinitialize);
  runApp(
    
   Provider.value(value: admanager,child: MyApp())
    );
    
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
   @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Start(),
    );
  }
}
