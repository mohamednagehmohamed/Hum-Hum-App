/*import 'dart:io';


class Adhelber {
  /*static const bool testmode = false;
  static String get interetialad {
    if (testmode == true) {
      return InterstitialAd.testAdUnitId;
    }
    return 'ca-app-pub-2713047462104611/3638377047';
  }*/
  static String get Bunnerid{
    if(Platform.isAndroid){
      return 'ca-app-pub-2713047462104611/8146228572';
    }
    else throw UnsupportedError("Un Supported Platform");
  }
  static String get interetialad{
    if(Platform.isAndroid){
      return 'ca-app-pub-2713047462104611/3638377047';
    }
    else throw UnsupportedError("Un Supported Platform");
  }
}*/
