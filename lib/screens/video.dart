//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mealapplication/homepage.dart';
import 'package:mealapplication/screens/favouiret.dart';

import 'package:video_player/video_player.dart';

/*void main() {
  runApp(Video());
}*/

class Video extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return VideoState();
  }
}

class VideoState extends State<Video> {
  bool isfitted = false;
  late VideoPlayerController controller;

  // late VideoPlayerController socendcontroller;
  late Future<void> initializevideoplayer;

  String getduartion() {
    final duration = Duration(
        milliseconds: controller.value.position.inMilliseconds.round());
    return [duration.inMinutes, duration.inSeconds]
        .map((seg) => seg.remainder(60).toString().padLeft(2, '0'))
        .join(':');
  }

  String gettextapp() {
    if (FavouirtsState.id == 1) {
      if (HomePageState.arabicvalue == false) {
        return 'Spagitti With Souce Tomato';
      } else {
        return 'سباجيتي مع صلصة الطماطم';
      }
    }
    if (FavouirtsState.id == 2) {
      if (HomePageState.arabicvalue == false) {
        return 'lasagna';
      } else {
        return 'لازانيا';
      }
    }
    if (FavouirtsState.id == 3) {
      if (HomePageState.arabicvalue == false) {
        return 'Botterga';
      } else {
        return 'بوتيرجا';
      }
    }
    if (FavouirtsState.id == 4) {
      return HomePageState.arabicvalue == false
          ? 'Classic Hamburg'
          : 'كلاسيك هامبورغ';
    }
    if (FavouirtsState.id == 5) {
      return HomePageState.arabicvalue == false
          ? 'Salad with Smoked Salmon'
          : 'سلطة مع سلمون مدخن';
    }
    if (FavouirtsState.id == 6) {
      return HomePageState.arabicvalue == false ? 'Toast Hawaii' : 'توست هاواي';
    }
    if (FavouirtsState.id == 7) {
      return HomePageState.arabicvalue == false ? 'Koshari' : 'كشري';
    }
    if (FavouirtsState.id == 8) {
      return HomePageState.arabicvalue == false
          ? 'Egyptian Lentil Soup'
          : 'شوربة عدس مصرية';
    }
    if (FavouirtsState.id == 9) {
      return HomePageState.arabicvalue == false ? 'Fattah' : 'فتة';
    }
    if (FavouirtsState.id == 10) {
      return HomePageState.arabicvalue == false ? 'Foul Mudammas' : 'فول مدمس';
    }
    if (FavouirtsState.id == 11) {
      return HomePageState.arabicvalue == false
          ? 'Egyptian Hummus'
          : 'حمص مصري';
    }
    if (FavouirtsState.id == 12) {
      return HomePageState.arabicvalue == false
          ? ' Spice Chicken Sheet Pan Dinner'
          : 'عشاء توابل دجاج';
    }
    if (FavouirtsState.id == 13) {
      return HomePageState.arabicvalue == false
          ? 'instant pot and cheese'
          : 'وعاء سريع التحضير والجبن';
    }
    if (FavouirtsState.id == 14) {
      return HomePageState.arabicvalue == false
          ? 'Salade With Smoked Salmon'
          : 'سلطة مع سلمون مدخن';
    }
    if (FavouirtsState.id == 15) {
      return HomePageState.arabicvalue == false ? 'Käsespätzle' : 'نودلز الجبن';
    }
    if (FavouirtsState.id == 16) {
      return HomePageState.arabicvalue == false ? 'Currywurst' : 'كوريوورست';
    }
    if (FavouirtsState.id == 17) {
      return HomePageState.arabicvalue == false ? 'Rouladen' : 'رولادين';
    }
    if (FavouirtsState.id == 18) {
      return HomePageState.arabicvalue == false
          ? 'Authentic German Schnitzel'
          : 'شنيتزل ألماني أصيل';
    }
    if (FavouirtsState.id == 19) {
      return HomePageState.arabicvalue == false ? 'Sauerbraten' : 'سويربراتن';
    }
    if (FavouirtsState.id == 20) {
      return HomePageState.arabicvalue == false
          ? 'Chicken souvlaki with tzatziki'
          : 'سوفلاكي دجاج مع تزاتزيكي';
    }
    if (FavouirtsState.id == 21) {
      return HomePageState.arabicvalue == false
          ? 'Korean barbecue chicken fried rice'
          : 'أرز مقلي بالدجاج الكوري باربيكيو';
    }
    if (FavouirtsState.id == 22) {
      return HomePageState.arabicvalue == false
          ? 'Korean barbecue chicken fried rice'
          : 'أرز مقلي بالدجاج الكوري باربيكيو';
    }
    if (FavouirtsState.id == 23) {
      return HomePageState.arabicvalue == false
          ? 'Quick tomato and salami pizzas'
          : 'طماطم سريعة وبيتزا سلامي';
    }
    if (FavouirtsState.id == 24) {
      return HomePageState.arabicvalue == false
          ? 'Quick tomato and salami pizzas'
          : 'طماطم سريعة وبيتزا سلامي';
    }
    if (FavouirtsState.id == 25) {
      return HomePageState.arabicvalue == false
          ? 'Mushroom lasagne'
          : 'لازانيا الفطر';
    }
    if (FavouirtsState.id == 26) {
      return HomePageState.arabicvalue == false ? 'Bun cha' : 'بون تشا';
    }
    if (FavouirtsState.id == 27) {
      return HomePageState.arabicvalue == false ? 'Bun cha' : 'بون تشا';
    }
    if (FavouirtsState.id == 28) {
      return HomePageState.arabicvalue == false
          ? 'Sweet miso steak with ramen'
          : 'شريحة لحم ميسو حلوة مع رامين';
    }
    if (FavouirtsState.id == 29) {
      return HomePageState.arabicvalue == false
          ? 'Sweet miso steak with ramen'
          : 'شريحة لحم ميسو حلوة مع رامين';
    }
    if (FavouirtsState.id == 30) {
      return HomePageState.arabicvalue == false
          ? 'Syrian Shawarma'
          : 'شاورما سوري';
    }
    if (FavouirtsState.id == 31) {
      if (HomePageState.arabicvalue == false) {
        return 'Spagitti With Souce Tomato';
      } else {
        return 'سباجيتي مع صلصة الطماطم';
      }
    }
    if (FavouirtsState.id == 32) {
      return HomePageState.arabicvalue == false ? 'Manakish' : 'مناقيش';
    }
    if (FavouirtsState.id == 33) {
      return HomePageState.arabicvalue == false
          ? 'Syrian falafel'
          : 'فلافل سوري';
    }
    if (FavouirtsState.id == 34) {
      return HomePageState.arabicvalue == false
          ? 'Syrian falafel'
          : 'فلافل سوري';
    }
    if (FavouirtsState.id == 35) {
      return HomePageState.arabicvalue == false ? 'Yabrak' : 'يبراك';
    }
    if (FavouirtsState.id == 36) {
      return HomePageState.arabicvalue == false ? 'Al-Maglouba' : 'المقلوبة';
    }
    if (FavouirtsState.id == 37) {
      return HomePageState.arabicvalue == false ? 'Shish Barak' : 'شيش براك';
    }
    if (FavouirtsState.id == 38) {
      return HomePageState.arabicvalue == false
          ? 'Scrambled Eggs'
          : 'بيض مخفوق';
    }
    if (FavouirtsState.id == 39) {
      return HomePageState.arabicvalue == false
          ? 'Breakfast Hand Pies'
          : 'فطائر الإفطار اليدوية';
    }
    if (FavouirtsState.id == 40) {
      return HomePageState.arabicvalue == false ? 'Chilaquiles' : 'تشيلاكويليس';
    }
    if (FavouirtsState.id == 41) {
      return HomePageState.arabicvalue == false ? 'Shakshuka' : 'شكشوكة';
    }
    if (FavouirtsState.id == 42) {
      return HomePageState.arabicvalue == false
          ? 'Granola Bars'
          : 'بارات جرانولا';
    }
    if (FavouirtsState.id == 43) {
      return HomePageState.arabicvalue == false
          ? 'Classic Hamburg'
          : 'كلاسيك هامبورغ';
    }
    if (FavouirtsState.id == 44) {
      return HomePageState.arabicvalue == false
          ? 'General Tso’s Chicken '
          : 'دجاج الجنرال تسو';
    }
    if (FavouirtsState.id == 45) {
      return HomePageState.arabicvalue == false
          ? 'Beef and Broccoli'
          : 'لحم البقر والبروكلي';
    }
    if (FavouirtsState.id == 46) {
      return HomePageState.arabicvalue == false
          ? 'Asian Slaw '
          : 'سلو الآسيوية';
    }
    if (FavouirtsState.id == 47) {
      return HomePageState.arabicvalue == false ? 'Gado Gado' : 'جدو قادو';
    }
    if (FavouirtsState.id == 48) {
      return HomePageState.arabicvalue == false
          ? ' Thai Noodle Salad'
          : 'سلطة المعكرونة التايلاندية';
    }
    if (FavouirtsState.id == 49) {
      return HomePageState.arabicvalue == false
          ? 'Chocolate Souffle'
          : 'سوفلي الشوكولاته';
    }
    if (FavouirtsState.id == 50) {
      return HomePageState.arabicvalue == false
          ? 'Soupe à l’oignon'
          : 'حساء بالبصل';
    }
    if (FavouirtsState.id == 51) {
      return HomePageState.arabicvalue == false ? 'Cassoulet' : 'كاسوليت';
    }
    if (FavouirtsState.id == 52) {
      return HomePageState.arabicvalue == false
          ? 'Bœuf bourguignon'
          : 'بوف بورغينيون';
    }
    if (FavouirtsState.id == 53) {
      return HomePageState.arabicvalue == false
          ? 'Steak frites'
          : 'فريتس شريحة لحم';
    }
    if (FavouirtsState.id == 54) {
      return HomePageState.arabicvalue == false ? 'Tarte tatin' : 'تارت تأتين';
    }
    if (FavouirtsState.id == 55) {
      return HomePageState.arabicvalue == false
          ? 'Asparagus Salad with Cherry Tomatoes'
          : 'سلطة الهليون مع الطماطم الكرزية';
    }
    if (FavouirtsState.id == 56) {
      return HomePageState.arabicvalue == false
          ? 'Delicious Orange Mousse'
          : 'موس البرتقال اللذيذ';
    }
    if (FavouirtsState.id == 57) {
      return HomePageState.arabicvalue == false
          ? 'Ahi Poke Bowl'
          : 'آهي بوك بول';
    }
    if (FavouirtsState.id == 58) {
      return HomePageState.arabicvalue == false
          ? 'Melon Prosciutto Skewers'
          : 'أسياخ البطيخ Prosciutto';
    }
    if (FavouirtsState.id == 59) {
      return HomePageState.arabicvalue == false
          ? 'Penne With Summer Veggies'
          : 'بيني مع الخضار الصيفية';
    }
    if (FavouirtsState.id == 60) {
      return HomePageState.arabicvalue == false ? 'Summer Rolls' : 'لفات الصيف';
    }
    if (FavouirtsState.id == 61) {
      return HomePageState.arabicvalue == false
          ? 'Apple Porridge'
          : 'عصيدة التفاح';
    }
    if (FavouirtsState.id == 62) {
      return HomePageState.arabicvalue == false
          ? 'Banana Smoothie with Oats'
          : 'سموثي الموز مع الشوفان';
    }
    if (FavouirtsState.id == 63) {
      return HomePageState.arabicvalue == false
          ? ' Smashed Avocado and Tomato on Toast'
          : 'الأفوكادو المهروس والطماطم على الخبز المحمص';
    }
    if (FavouirtsState.id == 64) {
      return HomePageState.arabicvalue == false
          ? 'Toast with Baked Tomatoes'
          : 'توست بالطماطم المشوية';
    }
    if (FavouirtsState.id == 65) {
      return HomePageState.arabicvalue == false
          ? 'Chicken Pesto Pasta'
          : 'باستا دجاج بالبيستو';
    }
    if (FavouirtsState.id == 66) {
      return HomePageState.arabicvalue == false ? 'Flafel' : 'فلافل';
    }
    return HomePageState.arabicvalue == false
        ? 'Video Page'
        : 'صفحة الفيديوهات';
  }

  String getvedio() {
    if (FavouirtsState.id == 1) {
      return 'images/spagittisouce.mp4';
    }
    if (FavouirtsState.id == 2) {
      return 'images/lasagna.mp4';
    }
    if (FavouirtsState.id == 3) {
      return 'images/How to make Italian Bottarga (Karasumi) Pasta.mp4';
    }

    return 'images/videosouce.mp4';
  }

  String networkvedio() {
    if (FavouirtsState.id == 4) {
      return 'https://youtu.be/JqjWaQyKriI';
    }
    if (FavouirtsState.id == 5) {
      return 'https://youtu.be/Xs-y3WrXLOg';
    }
    if (FavouirtsState.id == 6) {
      return 'https://youtu.be/WC6DGiu1tNw';
    }
    if (FavouirtsState.id == 7) {
      return 'https://youtu.be/y0d2ZMZBW4Y';
    }
    if (FavouirtsState.id == 8) {
      return 'https://youtu.be/peXVjc3fPDE';
    }
    if (FavouirtsState.id == 9) {
      return 'https://youtu.be/_2elKJ2Ntjk';
    }
    if (FavouirtsState.id == 10) {
      return 'https://youtu.be/PLiSjuoN4ck';
    }
    if (FavouirtsState.id == 11) {
      return 'https://youtu.be/ETXVbDoMKbQ';
    }
    if (FavouirtsState.id == 12) {
      return 'https://youtu.be/AXRINU_tjs8';
    }
    if (FavouirtsState.id == 13) {
      return 'https://youtu.be/AXdcK3KGktc';
    }
    if (FavouirtsState.id == 14) {
      return 'https://youtu.be/Xs-y3WrXLOg';
    }
    if (FavouirtsState.id == 15) {
      return 'https://youtu.be/3vYqK4Duvzk';
    }
    if (FavouirtsState.id == 16) {
      return 'https://youtu.be/wFRd6Z9QpGY';
    }
    if (FavouirtsState.id == 17) {
      return 'https://youtu.be/6Nn83UwezpM';
    }
    if (FavouirtsState.id == 18) {
      return 'https://youtu.be/O3H9UDtiTTg';
    }
    if (FavouirtsState.id == 19) {
      return 'https://youtu.be/7W_guDDu0Gk';
    }
    if (FavouirtsState.id == 20) {
      return 'https://youtu.be/CTiM-_JdMP4';
    }
    if (FavouirtsState.id == 21) {
      return 'https://youtu.be/2rSY8odxkjo';
    }
    if (FavouirtsState.id == 22) {
      return 'https://youtu.be/2rSY8odxkjo';
    }
    if (FavouirtsState.id == 23) {
      return 'https://youtu.be/y8J6jA5TpjE';
    }
    if (FavouirtsState.id == 24) {
      return 'https://youtu.be/y8J6jA5TpjE';
    }
    if (FavouirtsState.id == 25) {
      return 'https://youtu.be/6ZmaRthQGjQ';
    }
    if (FavouirtsState.id == 26) {
      return 'https://youtu.be/sFr_9c9akhc';
    }
    if (FavouirtsState.id == 27) {
      return 'https://youtu.be/sFr_9c9akhc';
    }
    if (FavouirtsState.id == 28) {
      return 'https://youtu.be/__FCDfqkcgk';
    }
    if (FavouirtsState.id == 29) {
      return 'https://youtu.be/__FCDfqkcgk';
    }
    if (FavouirtsState.id == 30) {
      return 'https://youtu.be/ipEOptCAcEA';
    }
    if (FavouirtsState.id == 31) {
      return 'https://youtu.be/ZR0cvRv-Rks';
    }
    if (FavouirtsState.id == 32) {
      return 'https://youtu.be/JUb-na8nx8I';
    }
    if (FavouirtsState.id == 33) {
      return 'https://youtu.be/JUb-na8nx8I';
    }
    if (FavouirtsState.id == 34) {
      return 'https://youtu.be/PUCgBaQe1g8';
    }
    if (FavouirtsState.id == 35) {
      return 'https://youtu.be/hLpw5YcQL9Q';
    }
    if (FavouirtsState.id == 36) {
      return 'https://youtu.be/hLpw5YcQL9Q';
    }
    if (FavouirtsState.id == 37) {
      return 'https://youtu.be/yyi55ZrpJ0E';
    }
    if (FavouirtsState.id == 38) {
      return 'https://youtu.be/thEkUbfznwQ';
    }
    if (FavouirtsState.id == 39) {
      return 'https://youtu.be/o_tK9tBByOs';
    }
    if (FavouirtsState.id == 40) {
      return 'https://youtu.be/618QsMaVXp8';
    }
    if (FavouirtsState.id == 41) {
      return 'https://youtu.be/gxfeJ628z_o';
    }
    if (FavouirtsState.id == 42) {
      return 'https://youtu.be/JqjWaQyKriI';
    }
    if (FavouirtsState.id == 43) {
      return 'https://youtu.be/wWGwz0iBmvU';
    }
    if (FavouirtsState.id == 44) {
      return 'https://youtu.be/yuwCrBxdKIc';
    }
    if (FavouirtsState.id == 45) {
      return 'https://youtu.be/VCrDOMl-mig';
    }
    if (FavouirtsState.id == 46) {
      return 'https://youtu.be/B74jA1IZjBU';
    }
    if (FavouirtsState.id == 47) {
      return 'https://youtu.be/-qVy9QJH8zY';
    }
    if (FavouirtsState.id == 48) {
      return 'https://youtu.be/XbO_qCNea3A';
    }
    if (FavouirtsState.id == 49) {
      return 'https://youtu.be/-DLDMQucqDI';
    }
    if (FavouirtsState.id == 50) {
      return 'https://youtu.be/nKGsoQM5YJk';
    }
    if (FavouirtsState.id == 51) {
      return 'https://youtu.be/8DCw_eR_iPA';
    }
    if (FavouirtsState.id == 52) {
      return 'https://youtu.be/cReW4wt8C6c';
    }
    if (FavouirtsState.id == 53) {
      return 'https://youtu.be/C8vSfU8zAwo';
    }
    if (FavouirtsState.id == 54) {
      return 'https://youtu.be/O--z_L2fEJk';
    }
    if (FavouirtsState.id == 55) {
      return 'https://youtu.be/pz8wemnuQO0';
    }
    if (FavouirtsState.id == 56) {
      return 'https://youtu.be/bP2oAsOTPm8';
    }
    if (FavouirtsState.id == 57) {
      return 'https://youtu.be/5h5glf7qQHc';
    }
    if (FavouirtsState.id == 58) {
      return 'https://youtu.be/dgpGZQOgg90';
    }
    if (FavouirtsState.id == 59) {
      return 'https://youtu.be/gTsQkR7Anqg';
    }
    if (FavouirtsState.id == 60) {
      return 'https://youtu.be/3MkdM5jXZGk';
    }
    if (FavouirtsState.id == 61) {
      return 'https://youtu.be/d2kvbf6fRPg';
    }
    if (FavouirtsState.id == 62) {
      return 'https://youtu.be/VMRnBM7Au88';
    }
    if (FavouirtsState.id == 63) {
      return 'https://youtu.be/J5XzFtDMHj4';
    }
    if (FavouirtsState.id == 64) {
      return 'https://youtu.be/SE_f4Lx6vG0';
    }
    if (FavouirtsState.id == 65) {
      return 'https://youtu.be/DKN8otY2L4M';
    }
    if (FavouirtsState.id == 66) {
      return 'https://youtu.be/foB6bxhZYF0';
    }
    return 'https://youtu.be/gKCdJSY3n38';
  }

  checkvideo() {
    if (FavouirtsState.id == 1 ||
        FavouirtsState.id == 2 ||
        FavouirtsState.id == 3) {
      controller = VideoPlayerController.asset(getvedio());
      initializevideoplayer = controller.initialize();
      controller.setLooping(true);
      controller.setVolume(1);
    } else {
      controller = VideoPlayerController.network(networkvedio());
      initializevideoplayer = controller.initialize();
      controller.setLooping(true);
      controller.setVolume(1);
    }
  }

  @override
  void initState() {
    // initiatecontroller();
    /*  controller = VideoPlayerController.asset(getvedio());
    initializevideoplayer = controller.initialize();
    controller.setLooping(true);
    controller.setVolume(1);*/
    checkvideo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: HomePageState.arabicvalue == false
          ? TextDirection.ltr
          : TextDirection.rtl,
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                //performcontroller();
                if (controller.value.isPlaying) {
                  controller.pause();
                } else {
                  controller.play();
                }
              });
            },
            child: Icon(
                controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
          ),
          backgroundColor:
              HomePageState.darkmode == false ? Colors.white : Colors.black,
          appBar: AppBar(
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            toolbarHeight: 70,
            centerTitle: true,
            title: Text(
              gettextapp(),
              /* HomePageState.arabicvalue == false
                ? 'Video Page'
                : 'صفحة الفيديوهات',*/
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  // fontFamily: GoogleFonts.abel().fontFamily,
                  color: Colors.white),
            ),
            leading: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).pop();
                  controller.pause();
                });
              },
              child: Image.asset('images/back.png'),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Colors.black),
            ),
          ),
          body: Column(
            children: [
              Stack(
                fit: isfitted == false ? StackFit.loose : StackFit.expand,
                children: [
                  FutureBuilder(
                      future: initializevideoplayer,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return AspectRatio(
                            aspectRatio: controller.value.aspectRatio,
                            child: VideoPlayer(controller),
                          );
                        } else {
                          return Center(
                            child: Text(
                              'No Video',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink),
                            ),
                          );
                        }
                      }),
                  Positioned(
                      bottom: 3,
                      right: 3,
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              isfitted = !isfitted;
                            });
                          },
                          icon: Icon(
                            Icons.fullscreen,
                            color: Colors.white,
                            size: 35,
                          ))),
                  Positioned(
                      bottom: 3,
                      left: 3,
                      child: Text(
                        getduartion(),
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )),
                ],
              ),
            ],
          )),
    );
  }
}
