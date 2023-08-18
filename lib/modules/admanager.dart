import 'dart:io';

import 'package:google_mobile_ads/google_mobile_ads.dart';


class AdsManager {
  /*static const bool testmode = false;
  static String get interetialad {
    if (testmode == true) {
      return InterstitialAd.testAdUnitId;
    }
    return 'ca-app-pub-2713047462104611/3638377047';
  }*/

 static bool testmode=true;
  Future<InitializationStatus> initialization;
  AdsManager({required this.initialization});
    static String get Appid{
    if(Platform.isAndroid){
      return 'ca-app-pub-2713047462104611~9385870621';
    }
    else throw UnsupportedError("Un Supported Platform");
  }
  static String get Bunnerid{
     if(Platform.isAndroid){
      return 'ca-app-pub-2713047462104611/9108854248';
    }
    else throw UnsupportedError("Un Supported Platform");
  }
  static String get interetialad{
      if(Platform.isAndroid){
      return 'ca-app-pub-2713047462104611/5361180928';
    }
    else throw UnsupportedError("Un Supported Platform");
  }
}
