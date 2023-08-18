//import 'dart:ui';

/*import 'package:flutter/material.dart';
import 'package:mealapplication/screens/newspalsh.dart';
import 'package:mealapplication/screens/secondsplash.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(Start());
}

class Start extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StartState();
  }
}

class StartState extends State<Start> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('images/45JJ8FPSLIAJKVWY.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : Container(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:mealapplication/homepage.dart';
import 'package:mealapplication/screens/help.dart';
import 'package:mealapplication/screens/secondsplash.dart';
import 'package:page_transition/page_transition.dart';

import 'package:video_player/video_player.dart';

/*void main() {
  runApp(Start());
}*/

class Start extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StartState();
  }
}

class StartState extends State<Start> {
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

  /*String gettextapp() {
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
    return HomePageState.arabicvalue == false
        ? 'Video Page'
        : 'صفحة الفيديوهات';
  }*/
  Future<bool> onBackButton() async {
    return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.purple,
              title: Text(
                HomePageState.arabicvalue == false
                    ? 'Hum Hum Application💎'
                    : ' تطبيق هم هم 💎',
                style: TextStyle(fontSize: 15),
              ),
              actions: [
                Column(
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
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: Start(),
                                      type: PageTransitionType.fade));
                            });
                          },
                          child: Text(
                            HomePageState.arabicvalue == false
                                ? 'Back to the same page'
                                : 'العودة لنفس الصفحه',
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                    Center(
                      child: MaterialButton(
                          color: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: Help(),
                                      type: PageTransitionType.fade));
                            });
                          },
                          child: Text(
                            HomePageState.arabicvalue == false
                                ? 'Information about App'
                                : 'معلومات عن التطبيق',
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                    Center(
                      child: MaterialButton(
                          color: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onPressed: () {
                            setState(() {
                              SystemNavigator.pop();
                            });
                          },
                          child: Text(
                            HomePageState.arabicvalue == false
                                ? 'Quit'
                                : 'الخروج',
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                  ],
                )
              ],
            ));
  }

  @override
  void initState() {
    // initiatecontroller();
    controller = VideoPlayerController.asset('images/M0LDMW8KM9RE7JV4.mp4');
    initializevideoplayer = controller.initialize();
    controller.setLooping(true);
    controller.setVolume(1);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onBackButton,
      child: Directionality(
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
          /* appBar:AppBar(
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            toolbarHeight: 70,
            centerTitle: true,
            title: Text(
              gettextapp()
              /* HomePageState.arabicvalue == false
                  ? 'Video Page'
                  : 'صفحة الفيديوهات'*/
              ,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  // fontFamily: GoogleFonts.abel().fontFamily,
                  color: Colors.white),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Colors.purple),
            ),
          ),*/
          body: Stack(
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
              Positioned(
                bottom: 3,
                left: MediaQuery.of(context).size.width / 2 - 30,
                child: MaterialButton(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: SecondSplash(),
                                type: PageTransitionType.leftToRight));
                        controller.pause();
                      });
                    },
                    child: Text(
                      'start',
                      style: TextStyle(fontSize: 22, color: Colors.amber),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
