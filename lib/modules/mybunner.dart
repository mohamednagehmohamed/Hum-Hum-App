

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:mealapplication/modules/admanager.dart';





//void main() => runApp(Asparagos());

class MyBunner extends StatefulWidget {
  @override
  MyBunnerState createState() => MyBunnerState();
}

class MyBunnerState extends State<MyBunner> {
late BannerAd mybunner;
 bool isready=false;
 AdSize adsize=AdSize.banner;
 void createbunner(){
     mybunner=BannerAd(size: AdSize.banner, adUnitId: AdsManager.Bunnerid, listener: BannerAdListener(
      onAdLoaded: (_){
        isready=true;
      },
      onAdFailedToLoad: (ad,error){
        print('Failed To Load Bunner Ads${error.message}');
        isready=false;
        ad.dispose();
      }
    ), request: AdRequest())..load();
 }
 @override
 void initState(){
   super.initState();
   createbunner();
 }
  @override
 void dispose(){
   super.dispose();
   mybunner.dispose();
 }
  @override
  Widget build(BuildContext context) {
   if(isready==true){
      return Container(
        width: adsize.width.toDouble(),
     height: adsize.height.toDouble(),
     child: AdWidget(ad: mybunner),
     alignment: Alignment.center,
    );
   }
    return Container();
  }
}
