
import 'package:flutter/material.dart';

import 'package:mealapplication/screens/asian.dart';
import 'package:mealapplication/screens/breakfast.dart';
import 'package:mealapplication/screens/exotic.dart';
import 'package:mealapplication/screens/french.dart';
import 'package:mealapplication/screens/german.dart';
import 'package:mealapplication/screens/egyption.dart';
import 'package:mealapplication/screens/italian.dart';
import 'package:mealapplication/screens/light.dart';
import 'package:mealapplication/screens/pregnant.dart';
import 'package:mealapplication/screens/quick.dart';
import 'package:mealapplication/screens/summer.dart';


import 'package:page_transition/page_transition.dart';
import 'package:rive/rive.dart';


class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  final String image;
  //static bool myshow = false;
  CategoryItem(this.id, this.title, this.color, this.image);
  
  Color checkcolor() {
    switch (id) {
      case 'c1':
        return Color(0xff7304A9);
      case 'c2':
        return Color(0xffB400AC);
      case 'c3':
        return Color(0xff3E02C4);
      case 'c4':
        return Color(0xff15CABB);
      case 'c5':
        return Color(0xff007B8A);
      case 'c6':
        return Color(0xff116F71);
      case 'c7':
        return Color(0xff2D0091);
      case 'c8':
        return Color(0xffbc6ad9);
      case 'c9':
        return Color(0xffbc6ad9);
      case 'c10':
        return Color(0xffbc6ad9);
      case 'c11':
        return Color(0xff116F71);
      default:
        return Colors.teal;
    }
  }

  String checkimage() {
    switch (id) {
      case 'c1':
        return 'images/youfood/ital.png';
      case 'c2':
        return 'images/youfood/egyp.png';
      case 'c3':
        return 'images/youfood/icons8-broccoli-96.png';
      case 'c4':
        return 'images/youfood/icons8-fish-food-96.png';
      case 'c5':
        return 'images/youfood/icons8-apple-jam-96.png';
      case 'c6':
        return 'images/youfood/syri.png';
      case 'c7':
        return 'images/youfood/breakfa.png';
      case 'c8':
        return 'images/youfood/icons8-french-fries-96.png';
      case 'c9':
        return 'images/youfood/icons8-coffee-beans-96.png';
      case 'c10':
        return 'images/youfood/meat.png';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          if (id == "c1") {
            // Center(child: Image.asset('images/Wedges-3s-200px.gif'));
           /* Navigator.push(
                context,
                PageTransition(
                    child: CustomSpinkit(),
                    type: PageTransitionType.rightToLeftWithFade));*/
             Navigator.push(
                context,
                PageTransition(
                    child: ItalianPage(),
                    type: PageTransitionType.rightToLeftWithFade));
           
          }
          if (id == "c2") {
            //myshow = true;
            /*Future.delayed(
                Duration(seconds: 2),
                () => Navigator.push(
                    context,
                    PageTransition(
                        child: QuickPage(),
                        type: PageTransitionType.rightToLeftWithFade)));*/
                      
            Navigator.push(
                context,
                PageTransition(
                    child: QuickPage(),
                    type: PageTransitionType.rightToLeftWithFade));
          }
          if (id == "c3") {
            // myshow = true;
            Navigator.push(
                context,
                PageTransition(
                    child: EgyptionPage(),
                    type: PageTransitionType.rightToLeftWithFade));
          }
          if (id == "c4") {
            // myshow = true;
            Navigator.push(
                context,
                PageTransition(
                    child: GermanPage(),
                    type: PageTransitionType.rightToLeftWithFade));
          }
          if (id == "c5") {
            //myshow = true;
            Navigator.push(
                context,
                PageTransition(
                    child: LightPage(),
                    type: PageTransitionType.rightToLeftWithFade));
          }
          if (id == "c6") {
            // myshow = true;
            Navigator.push(
                context,
                PageTransition(
                    child: ExoticPage(),
                    type: PageTransitionType.rightToLeftWithFade));
          }
          if (id == "c7") {
            // myshow = true;
            Navigator.push(
                context,
                PageTransition(
                    child: BreakfastPage(),
                    type: PageTransitionType.rightToLeftWithFade));
          }
          if (id == "c8") {
            //myshow = true;
            Navigator.push(
                context,
                PageTransition(
                    child: AsianPage(),
                    type: PageTransitionType.rightToLeftWithFade));
          }
          if (id == "c9") {
            // myshow = true;
            Navigator.push(
                context,
                PageTransition(
                    child: FrenchPage(),
                    type: PageTransitionType.rightToLeftWithFade));
          }
          if (id == "c10") {
            //myshow = true;
            Navigator.push(
                context,
                PageTransition(
                    child: SummerPage(), type: PageTransitionType.rightToLeft));
          }
          if (id == "c11") {
            //myshow = true;
            Navigator.push(
                context,
                PageTransition(
                    child: Pregnant(), type: PageTransitionType.rightToLeft));
          }
        },
        child: Container(
          padding: EdgeInsets.all(15),
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: id == 'c11'
                    ? RiveAnimation.asset(
                        'images/709-1384-trial.riv',
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        image,
                        width: 50,
                        //color: Colors.transparent,
                      ),
              )
            ],
          )),
          /* decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          color.withOpacity(0.4),
          Colors.pink.shade100,
          Colors.pinkAccent,
          Color(0xffbc6ad9)
        ],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
          ),
          borderRadius: BorderRadius.circular(15),
        ),*/
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: checkcolor()),
        ));
  }
}
