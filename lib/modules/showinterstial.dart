import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:mealapplication/modules/admanager.dart';

class ShowInterstial {
  static bool isready = false;
  static late InterstitialAd interstitialAd;
  static void loadinteristial() {
    InterstitialAd.load(
        adUnitId:AdsManager.interetialad,
        request:const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            isready = true;
            // Keep a reference to the ad so you can show it later.
            interstitialAd = ad;
          },
          onAdFailedToLoad: (LoadAdError error) {
            print('InterstitialAd failed to load: ${error.message}');
          },
        ));
  }

  static void showinterstialid() {
    if (isready) {
      interstitialAd.show();
    }
  }
}
