import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'package:mealapplication/modules/admanager.dart';

class ShowBunnerID {
  static bool isreadybunner = false;
  static late BannerAd bunnerAd;
  static void loadbunner() {
    bunnerAd=BannerAd(size: AdSize.banner, adUnitId: AdsManager.Bunnerid, listener: BannerAdListener(
      onAdLoaded: (_){
        isreadybunner=true;
      },
      onAdFailedToLoad: (ad,error){
        print('Failed To Load Bunner Ads${error.message}');
        isreadybunner=false;
        ad.dispose();
      }
    ), request: AdRequest())..load();
  }
  static void disposebunner() {
    bunnerAd.dispose();
  }

}
