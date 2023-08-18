//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:mealapplication/modules/floatingbutton.dart';
import 'package:mealapplication/modules/mybunner.dart';
import 'package:mealapplication/screens/asian.dart';
import 'package:mealapplication/screens/botterga.dart';
import 'package:mealapplication/screens/breakfast.dart';
import 'package:mealapplication/screens/chocolate.dart';
import 'package:mealapplication/screens/clahamburg.dart';
import 'package:mealapplication/screens/egyption.dart';
import 'package:mealapplication/screens/exotic.dart';
import 'package:mealapplication/screens/favouiret.dart';
import 'package:mealapplication/screens/french.dart';
import 'package:mealapplication/screens/italian.dart';
import 'package:mealapplication/screens/koshari.dart';
import 'package:mealapplication/screens/pregnant.dart';
import 'package:mealapplication/screens/quick.dart';
import 'package:mealapplication/screens/summer.dart';

import 'package:page_transition/page_transition.dart';

import '../homepage.dart';

/*void main() {
  runApp(Search());
}*/

class Search extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SearchState();
  }
}

class SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: HomePageState.arabicvalue == false
          ? TextDirection.ltr
          : TextDirection.rtl,
      child: Scaffold(
          floatingActionButton: SpeedDial(
            shape: MyFloatingButton(),
            animatedIcon: AnimatedIcons.menu_close,
            backgroundColor: Colors.black,
            overlayColor: Colors.black,
            children: [
              SpeedDialChild(
                  child: Icon(Icons.exit_to_app),
                  label: 'Exit',
                  labelStyle: TextStyle(color: Colors.black),
                  onTap: () {
                    setState(() {
                      SystemNavigator.pop();
                    });
                  }),
            ],
          ),
          backgroundColor:
              HomePageState.darkmode == false ? Colors.white : Colors.black,
          appBar: AppBar(
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            toolbarHeight: 70,
            title: Text(
              HomePageState.arabicvalue == false
                  ? 'Search Here about Meal'
                  : 'ابحث هنا عن الوجبة',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width*0.04,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  gradient: LinearGradient(colors: [
                    Colors.purple,
                    Colors.deepPurple,
                    Colors.purple
                  ])),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      showSearch(context: context, delegate: DataSearch());
                    });
                  },
                  icon: Icon(Icons.search))
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Image.asset('images/search.gif')),
              SizedBox(
                height: 20,
              ),
              Center(
                child:Container(
                 child:  Text(
                  HomePageState.arabicvalue == false
                      ? 'Search What You Want Here..'
                      : 'ابحث عما تريد هنا ..',
                  style: TextStyle(
                      fontSize: 30,
                      color: HomePageState.darkmode == false
                          ? Colors.black
                          : Colors.white),
                ),
                )
              ),
              SizedBox(height: 50,),
              MyBunner()
            ],
          )),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final myimages = [
    /*'icons8-apple-jam-96.png',
    'icons8-broccoli-96.png',
    'icons8-coffee-beans-96.png',
    'icons8-fish-96.png',
    'icons8-fish-food-96.png',
    'icons8-french-fries-96.png',
    'icons8-kawaii-noodle-100.png',
    'icons8-meal-96.png',
    'icons8-meat-128.png'*/

    'images/lentile.jpeg',
    'images/fattah.jpg',
    'images/foul.jpg',
    'images/hummud.jpg',
    'images/flafel.jpg',
  ];
  final myoldimages = [
    'images/spa.jpg',
    'images/spagitti.jpg',
    'images/lazania.jpg',
    'images/botterga.jpg',
    'images/177lazania.jpg',
    'images/toa.jpg',
    'images/ham.jpg',
  ];
  final mynames = [
    'asian meals',
    'botterga',
    'breakfast meals',
    'chocolate souffle',
    'classic hamburg',
    'egyption meals',
    'favouiret page',
    'koshari',
    'quick meals',
    'italian meals',
    'french meals',
    'syrian meals',
    'summer meals',
    'pregnant meals',
    'وجبات اسيوية',
    'بوتيرجا',
    'وجبات الافطار',
    'سوفلي الشوكولاته',
    'كلاسيك هامبورغ',
    'وجبات مصرية',
    'وجبات المانية',
    'الوجبات المفضلة',
    'كشري',
    'وجبات سريعة',
    'وجبات ايطالية',
    'وجبات فرنسية',
    'وجبات سورية',
    'وجبات الصيف',
    'وجبات الحوامل',
  ];
  final recentmynames = [
    HomePageState.arabicvalue == false ? 'Asian Meals' : 'وجبات اسيويه',
    HomePageState.arabicvalue == false ? 'Botterga' : 'بوتيرجا',
    HomePageState.arabicvalue == false ? 'Breakfast Meals' : 'وجبات الافطار',
    HomePageState.arabicvalue == false
        ? 'Chocolate Souffle'
        : 'سوفلي الشوكولاته',
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.of(context).pop();
          // close(context, null);
        },
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation));
  }

  @override
  Widget buildResults(BuildContext context) {
    return InkWell(
      onTap: () {
        if (query == 'Asian Meals' || query == 'asian meals') {
          Navigator.push(
              context,
              PageTransition(
                  child: AsianPage(), type: PageTransitionType.leftToRight));
        }
        if (query.contains('as') ||
            query.contains('asi') ||
            query.contains('asia') ||
            query.contains('asian')) {
          query = 'asian meals';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: AsianPage(),
                      type: PageTransitionType.leftToRight)));
        }

        if (query.contains('bo') ||
            query.contains('bott') ||
            query.contains('botter') ||
            query.contains('botterga')) {
          query = 'botterga meals';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: Botterga(),
                      type: PageTransitionType.leftToRight)));
        }
        if (query == 'Botterga' || query == 'botterga') {
          Navigator.push(
              context,
              PageTransition(
                  child: Botterga(), type: PageTransitionType.leftToRight));
        }
        if (query == 'Breakfast Meals' || query == 'breakfast meals') {
          Navigator.push(
              context,
              PageTransition(
                  child: BreakfastPage(),
                  type: PageTransitionType.leftToRight));
        }
        if (query.contains('br') ||
            query.contains('brea') ||
            query.contains('break') ||
            query.contains('breakfast')) {
          query = 'breakfast meals';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: BreakfastPage(),
                      type: PageTransitionType.leftToRight)));
        }
        if (query == 'Chocolate Souffle' || query == 'chocolate souffle') {
          Navigator.push(
              context,
              PageTransition(
                  child: ChocolatePage(),
                  type: PageTransitionType.leftToRight));
        }
        if (query.contains('ch') ||
            query.contains('choco') ||
            query.contains('chocol') ||
            query.contains('chocolate')) {
          query = 'chocolate meals';

          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: ChocolatePage(),
                      type: PageTransitionType.leftToRight)));
        }
        if (query == 'Classic Hamburg' || query == 'classic hamburg') {
          Navigator.push(
              context,
              PageTransition(
                  child: ClahamburgPage(),
                  type: PageTransitionType.leftToRight));
        }
        if (query.contains('cla') ||
            query.contains('clas') ||
            query.contains('class') ||
            query.contains('classic')) {
          query = 'classic meals';

          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: ClahamburgPage(),
                      type: PageTransitionType.leftToRight)));
        }
        if (query == 'Egyption Meals' || query == 'egyption meals') {
          Navigator.push(
              context,
              PageTransition(
                  child: EgyptionPage(), type: PageTransitionType.leftToRight));
        }
        if (query.contains('eg') ||
            query.contains('egy') ||
            query.contains('egyp') ||
            query.contains('egyption')) {
          query = 'egyption meals';

          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: EgyptionPage(),
                      type: PageTransitionType.leftToRight)));
        }
        if (query == 'Syrian Meals' || query == 'syrian meals') {
          Navigator.push(
              context,
              PageTransition(
                  child: ExoticPage(), type: PageTransitionType.leftToRight));
        }
        if (query.contains('sy') ||
            query.contains('syr') ||
            query.contains('syri') ||
            query.contains('syrian')) {
          query = 'syrian meals';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: ExoticPage(),
                      type: PageTransitionType.leftToRight)));
        }
        if (query == 'Favouiret Page' || query == 'favouiret page') {
          Navigator.push(
              context,
              PageTransition(
                  child: Favouirts(), type: PageTransitionType.leftToRight));
        }
        if (query.contains('fa') ||
            query.contains('fav') ||
            query.contains('favou') ||
            query.contains('favouirts')) {
          query = 'favouirts meals';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: Favouirts(),
                      type: PageTransitionType.leftToRight)));
        }
        if (query == 'Koshari' || query == 'koshari') {
          Navigator.push(
              context,
              PageTransition(
                  child: Koshari(), type: PageTransitionType.leftToRight));
        }
        if (query.contains('ko') ||
            query.contains('kosh') ||
            query.contains('kosha') ||
            query.contains('koshari')) {
          query = 'koshari meals';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: Koshari(), type: PageTransitionType.leftToRight)));
        }
        if (query == 'Quick Meals' || query == 'quick meals') {
          Navigator.push(
              context,
              PageTransition(
                  child: QuickPage(), type: PageTransitionType.leftToRight));
        }
        if (query.contains('qu') ||
            query.contains('qui') ||
            query.contains('quic') ||
            query.contains('quick')) {
          query = 'quick meals';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: QuickPage(),
                      type: PageTransitionType.leftToRight)));
        }
        if (query == 'italian meals') {
          Navigator.push(
              context,
              PageTransition(
                  child: ItalianPage(), type: PageTransitionType.leftToRight));
        }
        if (query.contains('it') ||
            query.contains('ita') ||
            query.contains('itali') ||
            query.contains('italian')) {
          query = 'italian meals';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: ItalianPage(),
                      type: PageTransitionType.leftToRight)));
        }
        if (query == 'french meals') {
          Navigator.push(
              context,
              PageTransition(
                  child: FrenchPage(), type: PageTransitionType.leftToRight));
        }
        if (query.contains('fr') ||
            query.contains('fre') ||
            query.contains('fren') ||
            query.contains('french')) {
          query = 'french meals';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: FrenchPage(),
                      type: PageTransitionType.leftToRight)));
        }
        if (query == 'pregnant meals') {
          Navigator.push(
              context,
              PageTransition(
                  child: Pregnant(), type: PageTransitionType.leftToRight));
        }
        if (query.contains('pr') ||
            query.contains('pre') ||
            query.contains('pregna') ||
            query.contains('pregnant')) {
          query = 'pregnant meals';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: Pregnant(),
                      type: PageTransitionType.leftToRight)));
        }
        if (query == 'summer meals') {
          Navigator.push(
              context,
              PageTransition(
                  child: SummerPage(), type: PageTransitionType.leftToRight));
        }
        if (query.contains('su') ||
            query.contains('sum') ||
            query.contains('summ') ||
            query.contains('summer')) {
          query = 'summer meals';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: SummerPage(),
                      type: PageTransitionType.leftToRight)));
        }
        if (query == 'وجبات أسيوية' || query == 'وجبات اسيوية') {
          Navigator.push(
              context,
              PageTransition(
                  child: AsianPage(), type: PageTransitionType.leftToRight));
        }
        if (query.contains('اس') ||
            query.contains('اسي') ||
            query.contains('اسيو') ||
            query.contains('اسيوية')) {
          query = 'وجبات أسيوية';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: AsianPage(),
                      type: PageTransitionType.leftToRight)));
        }
        if (query == 'بوتيرجا' || query == 'بو') {
          Navigator.push(
              context,
              PageTransition(
                  child: Botterga(), type: PageTransitionType.leftToRight));
        }
        if (query.contains('بو') ||
            query.contains('بوتي') ||
            query.contains('بوتير') ||
            query.contains('بوتيرجا')) {
          query = ' بوتيرجا';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: Botterga(),
                      type: PageTransitionType.leftToRight)));
        }
        if (query == 'وجبات الافطار' || query == 'الاف') {
          Navigator.push(
              context,
              PageTransition(
                  child: BreakfastPage(),
                  type: PageTransitionType.leftToRight));
        }
        if (query.contains('الا') ||
            query.contains('الاف') ||
            query.contains('الافط') ||
            query.contains('الافطار')) {
          query = 'وجبات الافطار';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: BreakfastPage(),
                      type: PageTransitionType.leftToRight)));
        }
        if (query == 'سوفلي الشوكولاته' || query == 'شوكلاتة') {
          Navigator.push(
              context,
              PageTransition(
                  child: ChocolatePage(),
                  type: PageTransitionType.leftToRight));
        }
        if (query.contains('شو') ||
            query.contains('شوكلا') ||
            query.contains('شوكلات') ||
            query.contains('شوكلاتة')) {
          query = 'سوفلي الشوكولاته';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: ChocolatePage(),
                      type: PageTransitionType.leftToRight)));
        }
        if (query == 'كلاسيك هامبورغ' || query == 'كلاسيك') {
          Navigator.push(
              context,
              PageTransition(
                  child: ClahamburgPage(),
                  type: PageTransitionType.leftToRight));
        }
        if (query.contains('كلا') ||
            query.contains('كلاس') ||
            query.contains('كلاس') ||
            query.contains('كلاسيك')) {
          query = 'كلاسيك هامبورغ';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: ClahamburgPage(),
                      type: PageTransitionType.leftToRight)));
        }
        if (query == 'وجبات مصرية' || query == 'وجبات مصريه') {
          Navigator.push(
              context,
              PageTransition(
                  child: EgyptionPage(), type: PageTransitionType.leftToRight));
        }
        if (query.contains('مص') ||
            query.contains('مصر') ||
            query.contains('مصري') ||
            query.contains('مصرية')) {
          query = 'وجبات مصرية';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: EgyptionPage(),
                      type: PageTransitionType.leftToRight)));
        }
        if (query == 'وجبات سوريه' || query == 'سوري') {
          Navigator.push(
              context,
              PageTransition(
                  child: ExoticPage(), type: PageTransitionType.leftToRight));
        }
        if (query.contains('سو') ||
            query.contains('سور') ||
            query.contains('سوري') ||
            query.contains('سوريه')) {
          query = 'وجبات سوريه';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: ExoticPage(),
                      type: PageTransitionType.leftToRight)));
        }
        if (query == 'الوجبات المفضلة' || query == 'وجبات مفضلة') {
          Navigator.push(
              context,
              PageTransition(
                  child: Favouirts(), type: PageTransitionType.leftToRight));
        }
        if (query.contains('مف') ||
            query.contains('مفض') ||
            query.contains('مفضل') ||
            query.contains('مفضله')) {
          query = 'وجبات مفضله';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: Favouirts(),
                      type: PageTransitionType.leftToRight)));
        }
        if (query == 'كشري') {
          Navigator.push(
              context,
              PageTransition(
                  child: Koshari(), type: PageTransitionType.leftToRight));
        }
        if (query.contains('كش') ||
            query.contains('كشر') ||
            query.contains('كشري')) {
          query = 'كشري';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: Koshari(), type: PageTransitionType.leftToRight)));
        }
        if (query == 'وجبات سريعه') {
          Navigator.push(
              context,
              PageTransition(
                  child: QuickPage(), type: PageTransitionType.leftToRight));
        }
        if (query.contains('سر') ||
            query.contains('سري') ||
            query.contains('سريع') ||
            query.contains('سريعه')) {
          query = 'وجبات سريعه';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: QuickPage(),
                      type: PageTransitionType.leftToRight)));
        }
        if (query == 'وجبات ايطالية') {
          Navigator.push(
              context,
              PageTransition(
                  child: ItalianPage(), type: PageTransitionType.leftToRight));
        }
        if (query.contains('اي') ||
            query.contains('ايطا') ||
            query.contains('ايطال') ||
            query.contains('ايطالية')) {
          query = 'وجبات ايطالية';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: ItalianPage(),
                      type: PageTransitionType.leftToRight)));
        }
        if (query == 'وجبات فرنسيه') {
          Navigator.push(
              context,
              PageTransition(
                  child: FrenchPage(), type: PageTransitionType.leftToRight));
        }
        if (query.contains('فر') ||
            query.contains('فرن') ||
            query.contains('فرنسي') ||
            query.contains('فرنسية')) {
          query = 'وجبات فرنسية';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: FrenchPage(),
                      type: PageTransitionType.leftToRight)));
        }
        if (query == 'وجبات الحوامل') {
          Navigator.push(
              context,
              PageTransition(
                  child: Pregnant(), type: PageTransitionType.leftToRight));
        }
        if (query.contains('حو') ||
            query.contains('حوا') ||
            query.contains('الحوا') ||
            query.contains('الحوامل')) {
          query = 'وجبات الحوامل';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: Pregnant(),
                      type: PageTransitionType.leftToRight)));
        }
        if (query == 'وجبات الصيف') {
          Navigator.push(
              context,
              PageTransition(
                  child: SummerPage(), type: PageTransitionType.leftToRight));
        }
        if (query.contains('صي') ||
            query.contains('صيف') ||
            query.contains('الصيف')) {
          query = 'وجبات الصيف';
          Future.delayed(
              Duration(seconds: 2),
              () => Navigator.push(
                  context,
                  PageTransition(
                      child: SummerPage(),
                      type: PageTransitionType.leftToRight)));
        }
      },
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  HomePageState.arabicvalue == false
                      ? 'Press Here>>>'
                      : 'اضغط هنا',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Image.asset('images/icons8-down.gif'),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(query,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ],
          )),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final sugessionlist = query.isEmpty
        ? recentmynames
        : mynames.where((element) => element.startsWith(query)).toList();
    final imagelist = query.isEmpty ? myimages : myoldimages;
    return ListView.builder(
        //  shrinkWrap: true,
        itemCount: sugessionlist.length,
        itemBuilder: (context, index) => ListTile(
            onTap: () {
              showResults(context);
            },
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage(imagelist[index]),
                  width: 50,
                )),
            title: RichText(
              text: TextSpan(
                  text: sugessionlist[index].substring(0, query.length),
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: sugessionlist[index].substring(query.length),
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.normal),
                    )
                  ]),
            )));
  }
}
