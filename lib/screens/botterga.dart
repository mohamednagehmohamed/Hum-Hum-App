//import 'dart:async';
//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:mealapplication/homepage.dart';
import 'package:mealapplication/modules/floatingbutton.dart';

//void main() => runApp(Botterga());

class Botterga extends StatefulWidget {
  @override
  BottergaState createState() => BottergaState();
}

class BottergaState extends State<Botterga> {
  Future<void> handeltorefresh() async {
    return await Future.delayed(Duration(seconds: 2));
  }

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
            HomePageState.arabicvalue == false ? 'Botterga' : 'بوتيرجا',
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
                gradient: LinearGradient(
                    colors: [Colors.purple, Colors.deepPurple, Colors.purple])),
          ),
        ),
        body: LiquidPullToRefresh(
          color: Colors.purple,
          backgroundColor: Colors.orange,
          onRefresh: handeltorefresh,
          showChildOpacityTransition: true,
          animSpeedFactor: 2,
          child: ListView(
            children: [
              Image.asset(
                'images/botterga.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              SizedBox(
                height: 8,
              ),
              Center(
                child: Text(
                  HomePageState.arabicvalue == false
                      ? 'Ingredients'
                      : ' مكونات ',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.orange),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                color: Colors.purpleAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              // color: Colors.lightBlueAccent,
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: ListTile(
                            title: Text(
                              HomePageState.arabicvalue == false
                                  ? '2 ounces (60g, about 1 whole lobe)'
                                  : '2 أونصة (60 جم ​​؛ حوالي 1 فص كامل)',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.flare_rounded,
                              color: Colors.red,
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              //   color: Colors.lightBlueAccent,
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: ListTile(
                            title: Text(
                              HomePageState.arabicvalue == false
                                  ? '1/2 cup (120ml) extra-virgin olive oil'
                                  : '1/2 كوب (120 مل) زيت زيتون بكر ممتاز',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.flare_rounded,
                              color: Colors.red,
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              // color: Colors.lightBlueAccent,
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: ListTile(
                            title: Text(
                              HomePageState.arabicvalue == false
                                  ? '2 garlic cloves (10g), lightly crushed'
                                  : '2 فص ثوم (10 جم) مهروس قليلًا',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.flare_rounded,
                              color: Colors.red,
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              // color: Colors.lightBlueAccent,
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: ListTile(
                            title: Text(
                              HomePageState.arabicvalue == false
                                  ? '1/4 to 1/2 teaspoon red pepper flakes'
                                  : '1/4 إلى 1/2 ملعقة صغيرة من رقائق الفلفل الأحمر',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.flare_rounded,
                              color: Colors.red,
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              // color: Colors.lightBlueAccent,
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: ListTile(
                            title: Text(
                              HomePageState.arabicvalue == false
                                  ? 'Kosher salt'
                                  : 'الملح كوشير ',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.flare_rounded,
                              color: Colors.red,
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              // color: Colors.lightBlueAccent,
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: ListTile(
                            title: Text(
                              HomePageState.arabicvalue == false
                                  ? '12 ounces (340g) dried long pasta such as spaghetti, spaghettoni, or linguine'
                                  : '12 أوقية (340 جم) من المعكرونة الطويلة المجففة مثل السباغيتي أو السباغيتي أو اللينجويني  ',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.flare_rounded,
                              color: Colors.red,
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              // color: Colors.lightBlueAccent,
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: ListTile(
                            title: Text(
                              HomePageState.arabicvalue == false
                                  ? '1 loosely packed cup (1/2 ounce; 15g) fresh parsley leaves and tender stems, finely chopped'
                                  : '1 كوب معبأ بشكل فضفاض (12 أونصة ؛ 15 جم) أوراق بقدونس طازجة وسيقان طرية ، مفرومة ناعماً',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.flare_rounded,
                              color: Colors.red,
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              //color: Colors.lightBlueAccent,
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: ListTile(
                            title: Text(
                              HomePageState.arabicvalue == false
                                  ? '1 tablespoon (15ml) fresh lemon juice, plus finely grated zest of 1 lemon'
                                  : '1 ملعقة كبيرة (15 مل) عصير ليمون طازج ، بالإضافة إلى قشر 1 ليمونة مبشورة ناعماً',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.flare_rounded,
                              color: Colors.red,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              /* Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.pinkAccent,
                          Colors.deepPurple,
                          Colors.pinkAccent,
                        ]),
                      ),
                      child: Text(
                        HomePageState.arabicvalue == false
                            ? '2 ounces (60g, about 1 whole lobe)'
                            : '2 أونصة (60 جم ​​؛ حوالي 1 فص كامل)',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.pinkAccent,
                          Colors.deepPurple,
                          Colors.pinkAccent,
                        ]),
                      ),
                      child: Text(
                        HomePageState.arabicvalue == false
                            ? '1/2 cup (120ml) extra-virgin olive oil'
                            : '1/2 كوب (120 مل) زيت زيتون بكر ممتاز',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.pinkAccent,
                          Colors.deepPurple,
                          Colors.pinkAccent,
                        ]),
                      ),
                      child: Text(
                        HomePageState.arabicvalue == false
                            ? '2 garlic cloves (10g), lightly crushed'
                            : '2 فص ثوم (10 جم) مهروس قليلًا',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.pinkAccent,
                          Colors.deepPurple,
                          Colors.pinkAccent,
                        ]),
                      ),
                      child: Text(
                        HomePageState.arabicvalue == false
                            ? '1/4 to 1/2 teaspoon red pepper flakes'
                            : '1/4 إلى 1/2 ملعقة صغيرة من رقائق الفلفل الأحمر',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.pinkAccent,
                          Colors.deepPurple,
                          Colors.pinkAccent,
                        ]),
                      ),
                      child: Text(
                        HomePageState.arabicvalue == false
                            ? 'Kosher salt'
                            : 'الملح كوشير ',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.pinkAccent,
                          Colors.deepPurple,
                          Colors.pinkAccent,
                        ]),
                      ),
                      child: Text(
                        HomePageState.arabicvalue == false
                            ? '12 ounces (340g) dried long pasta such as spaghetti, spaghettoni, or linguine'
                            : '12 أوقية (340 جم) من المعكرونة الطويلة المجففة مثل السباغيتي أو السباغيتي أو اللينجويني  ',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.pinkAccent,
                          Colors.deepPurple,
                          Colors.pinkAccent,
                        ]),
                      ),
                      child: Text(
                        HomePageState.arabicvalue == false
                            ? '1 loosely packed cup (1/2 ounce; 15g) fresh parsley leaves and tender stems, finely chopped'
                            : '1 كوب معبأ بشكل فضفاض (12 أونصة ؛ 15 جم) أوراق بقدونس طازجة وسيقان طرية ، مفرومة ناعماً',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.pinkAccent,
                          Colors.deepPurple,
                          Colors.pinkAccent,
                        ]),
                      ),
                      child: Text(
                        HomePageState.arabicvalue == false
                            ? '1 tablespoon (15ml) fresh lemon juice, plus finely grated zest of 1 lemon'
                            : '1 ملعقة كبيرة (15 مل) عصير ليمون طازج ، بالإضافة إلى قشر 1 ليمونة مبشورة ناعماً',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),*/
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  HomePageState.arabicvalue == false ? 'Steps' : 'خطوات',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.deepOrangeAccent),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                color: Colors.deepPurpleAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: ListTile(
                            title: Text(
                              HomePageState.arabicvalue == false
                                  ? 'Using a sharp knife, gently score bottarga lobe down its length to expose pellicle, or membrane. Using your hands, peel away pellicle and discard. Using a rasp grater (Microplane), finely grate all but 1/4 ounce (10g; about 2-inch piece) bottarga onto a plate or small rimmed baking sheet. Set aside grated bottarga, as well as the remaining small piece of bottarga and grater.'
                                  : 'باستخدام سكين حاد ، قم بقطع شحمة بوتارجا برفق على طولها لفضح القشرة أو الغشاء. باستخدام يديك ، انزع القشرة بعيدًا وتخلص منها. باستخدام مبشرة عرموش (Microplane) ، قم ببشر كل بوتارجا ما عدا 1/4 أونصة (10 جم ، قطعة 2 بوصة تقريبًا) على طبق أو صفيحة خبز صغيرة. توضع جانباً بوتارجا المبشور ، وكذلك القطعة الصغيرة المتبقية من بوتارجا والمبشرة.',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.format_list_numbered,
                              color: Colors.black,
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: ListTile(
                            title: Text(
                              HomePageState.arabicvalue == false
                                  ? 'Bring a large pot of lightly salted water to a boil. Cook lasagna noodles in boiling water for 8 to 10 minutes. Drain noodles, and rinse with cold water. In a mixing bowl, combine ricotta cheese with egg, remaining parsley, and 1/2 teaspoon salt'
                                  : 'أحضر قدرًا كبيرًا من الماء المملح قليلًا ليغلي. تُطهى نودلز اللازانيا في الماء المغلي لمدة 8 إلى 10 دقائق. صفي المعكرونة واشطفها بالماء البارد. في وعاء للخلط ، يُمزج جبن الريكوتا مع البيض ، والبقدونس المتبقي ، ونصف ملعقة صغيرة من الملح',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.format_list_numbered,
                              color: Colors.black,
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: ListTile(
                            title: Text(
                              HomePageState.arabicvalue == false
                                  ? 'In a large skillet or straight-sided sauté pan, combine oil and garlic. Cook over medium heat, turning garlic cloves occasionally, until garlic is deep golden brown on all sides, about 5 minutes. Using tongs or a slotted spoon, remove garlic from skillet; reserve garlic for another use or discard. Add red pepper flakes and continue to cook, stirring constantly, until fragrant, about 30 seconds'
                                  : ' في مقلاة كبيرة أو مقلاة ذات جوانب مستقيمة ، اخلطي الزيت والثوم. يُطهى على نار متوسطة ، مع تقليب فصوص الثوم من حين لآخر ، حتى يصبح لون الثوم بنيًا ذهبيًا عميقًا من جميع الجوانب ، لمدة 5 دقائق تقريبًا. باستخدام ملقط أو ملعقة مشقوقة ، أزل الثوم من المقلاة ؛ احتفظ بالثوم لاستخدام آخر أو تخلص منه. أضيفي رقائق الفلفل الأحمر واستمري في الطهي مع التحريك باستمرار حتى تفوح رائحته لمدة 30 ثانية تقريبًا',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.format_list_numbered,
                              color: Colors.black,
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: ListTile(
                            title: Text(
                              HomePageState.arabicvalue == false
                                  ? 'Remove skillet from heat, add all of the grated bottarga (1 3/4 ounces; 50g), and stir until well-combined with olive oil; set aside'
                                  : 'ارفعي المقلاة عن النار وأضيفي كل القارورة المبشورة (1 3/4 أونصة ، 50 جم) وقلبي حتى تمتزج جيدًا مع زيت الزيتون ؛ اجلس جانبا',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.format_list_numbered,
                              color: Colors.black,
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: ListTile(
                            title: Text(
                              HomePageState.arabicvalue == false
                                  ? 'Meanwhile, in a wide-bottomed pot, combine 3 quarts (3L) of water and 1 tablespoon (12g) salt, and bring to a boil over high heat. Add pasta and cook, stirring frequently for first 30 seconds to prevent noodles from sticking. Cook pasta until al dente (start tasting noodles for doneness 2 minutes before suggested cooking time on package). Just before pasta is ready, transfer 1/2 cup (120ml) pasta cooking water to skillet with olive oil-bottarga mixture, and stir to combine with a rubber spatula'
                                  : 'في هذه الأثناء ، في وعاء واسع القاع ، اخلطي 3 لترات من الماء وملعقة كبيرة (12 جم) ملح ، واتركيها حتى الغليان على نار عالية. أضيفي المعكرونة واطهيها مع التحريك المتكرر لمدة 30 ثانية لمنع المعكرونة من الالتصاق. اطهي المعكرونة حتى تنضج (ابدأ في تذوق النودلز حتى تنضج قبل دقيقتين من وقت الطهي المقترح على العبوة). قبل أن تصبح المعكرونة جاهزة مباشرة ، انقل 1/2 كوب (120 مل) من ماء طهي المعكرونة إلى مقلاة مع خليط زيت الزيتون والبوتارجا ، وحركها حتى تمتزج مع ملعقة مطاطية',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.format_list_numbered,
                              color: Colors.black,
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: ListTile(
                            title: Text(
                              HomePageState.arabicvalue == false
                                  ? 'Using tongs, transfer pasta to skillet (which remains off-heat), and reserve remaining pasta cooking water. Alternatively, drain pasta using a colander or fine-mesh strainer, making sure to reserve at least 1 cup (240ml) pasta cooking water. Rapidly stir and toss pasta until sauce is emulsified, evenly coats noodles, and pools around edges of the skillet, 30 seconds to 1 minute, adding more pasta cooking water in 1/4 cup (60ml) increments as needed to adjust consistency of sauce'
                                  : 'باستخدام الملقط ، انقل المعكرونة إلى المقلاة (التي تظل بعيدة عن الحرارة) ، واحتفظ بمياه الطهي المتبقية. بدلاً من ذلك ، صفي المعكرونة باستخدام مصفاة أو مصفاة شبكية دقيقة ، مع التأكد من الاحتفاظ بكوب واحد على الأقل (240 مل) من ماء طهي المعكرونة. قلب المعكرونة سريعًا وقلبها حتى تصبح الصلصة مستحلبًا ، وقم بتغطية المعكرونة بالتساوي ، وبرك حول حواف المقلاة ، من 30 ثانية إلى دقيقة واحدة ، مع إضافة المزيد من ماء طهي المعكرونة في 1/4 كوب (60 مل) زيادات حسب الحاجة لضبط تناسق الصلصة',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.format_list_numbered,
                              color: Colors.black,
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: ListTile(
                            title: Text(
                              HomePageState.arabicvalue == false
                                  ? 'Add parsley, lemon juice and zest, and stir to combine. Season with salt to taste. Divide between individual serving bowls, grate remaining bottarga over top, and serve'
                                  : 'يُضاف البقدونس وعصير الليمون والقشر ويُحرّك المزيج. تبلها مع ملح للمذاق. قسّميها بين أوعية تقديم فردية ، وابشري ما تبقى من بوتارجا فوقها ، وقدميها',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.format_list_numbered,
                              color: Colors.black,
                            ),
                          )),
                    ),
                  ],
                ),
              )
              /* Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.deepOrange,
                            Colors.orange,
                            Colors.orangeAccent,
                          ]),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.format_list_numbered),
                            Expanded(
                              child: Text(
                                HomePageState.arabicvalue == false
                                    ? 'Using a sharp knife, gently score bottarga lobe down its length to expose pellicle, or membrane. Using your hands, peel away pellicle and discard. Using a rasp grater (Microplane), finely grate all but 1/4 ounce (10g; about 2-inch piece) bottarga onto a plate or small rimmed baking sheet. Set aside grated bottarga, as well as the remaining small piece of bottarga and grater.'
                                    : 'باستخدام سكين حاد ، قم بقطع شحمة بوتارجا برفق على طولها لفضح القشرة أو الغشاء. باستخدام يديك ، انزع القشرة بعيدًا وتخلص منها. باستخدام مبشرة عرموش (Microplane) ، قم ببشر كل بوتارجا ما عدا 1/4 أونصة (10 جم ، قطعة 2 بوصة تقريبًا) على طبق أو صفيحة خبز صغيرة. توضع جانباً بوتارجا المبشور ، وكذلك القطعة الصغيرة المتبقية من بوتارجا والمبشرة.',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.deepOrange,
                            Colors.orange,
                            Colors.orangeAccent,
                          ]),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.format_list_numbered),
                            Expanded(
                              child: Text(
                                HomePageState.arabicvalue == false
                                    ? 'Bring a large pot of lightly salted water to a boil. Cook lasagna noodles in boiling water for 8 to 10 minutes. Drain noodles, and rinse with cold water. In a mixing bowl, combine ricotta cheese with egg, remaining parsley, and 1/2 teaspoon salt'
                                    : 'أحضر قدرًا كبيرًا من الماء المملح قليلًا ليغلي. تُطهى نودلز اللازانيا في الماء المغلي لمدة 8 إلى 10 دقائق. صفي المعكرونة واشطفها بالماء البارد. في وعاء للخلط ، يُمزج جبن الريكوتا مع البيض ، والبقدونس المتبقي ، ونصف ملعقة صغيرة من الملح',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.deepOrange,
                            Colors.orange,
                            Colors.orangeAccent,
                          ]),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.format_list_numbered),
                            Expanded(
                              child: Text(
                                HomePageState.arabicvalue == false
                                    ? 'In a large skillet or straight-sided sauté pan, combine oil and garlic. Cook over medium heat, turning garlic cloves occasionally, until garlic is deep golden brown on all sides, about 5 minutes. Using tongs or a slotted spoon, remove garlic from skillet; reserve garlic for another use or discard. Add red pepper flakes and continue to cook, stirring constantly, until fragrant, about 30 seconds'
                                    : ' في مقلاة كبيرة أو مقلاة ذات جوانب مستقيمة ، اخلطي الزيت والثوم. يُطهى على نار متوسطة ، مع تقليب فصوص الثوم من حين لآخر ، حتى يصبح لون الثوم بنيًا ذهبيًا عميقًا من جميع الجوانب ، لمدة 5 دقائق تقريبًا. باستخدام ملقط أو ملعقة مشقوقة ، أزل الثوم من المقلاة ؛ احتفظ بالثوم لاستخدام آخر أو تخلص منه. أضيفي رقائق الفلفل الأحمر واستمري في الطهي مع التحريك باستمرار حتى تفوح رائحته لمدة 30 ثانية تقريبًا',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.deepOrange,
                            Colors.orange,
                            Colors.orangeAccent,
                          ]),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.format_list_numbered),
                            Expanded(
                              child: Text(
                                HomePageState.arabicvalue == false
                                    ? 'Remove skillet from heat, add all of the grated bottarga (1 3/4 ounces; 50g), and stir until well-combined with olive oil; set aside'
                                    : 'ارفعي المقلاة عن النار وأضيفي كل القارورة المبشورة (1 3/4 أونصة ، 50 جم) وقلبي حتى تمتزج جيدًا مع زيت الزيتون ؛ اجلس جانبا',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.deepOrange,
                            Colors.orange,
                            Colors.orangeAccent,
                          ]),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.format_list_numbered),
                            Expanded(
                              child: Text(
                                HomePageState.arabicvalue == false
                                    ? 'Meanwhile, in a wide-bottomed pot, combine 3 quarts (3L) of water and 1 tablespoon (12g) salt, and bring to a boil over high heat. Add pasta and cook, stirring frequently for first 30 seconds to prevent noodles from sticking. Cook pasta until al dente (start tasting noodles for doneness 2 minutes before suggested cooking time on package). Just before pasta is ready, transfer 1/2 cup (120ml) pasta cooking water to skillet with olive oil-bottarga mixture, and stir to combine with a rubber spatula'
                                    : 'في هذه الأثناء ، في وعاء واسع القاع ، اخلطي 3 لترات من الماء وملعقة كبيرة (12 جم) ملح ، واتركيها حتى الغليان على نار عالية. أضيفي المعكرونة واطهيها مع التحريك المتكرر لمدة 30 ثانية لمنع المعكرونة من الالتصاق. اطهي المعكرونة حتى تنضج (ابدأ في تذوق النودلز حتى تنضج قبل دقيقتين من وقت الطهي المقترح على العبوة). قبل أن تصبح المعكرونة جاهزة مباشرة ، انقل 1/2 كوب (120 مل) من ماء طهي المعكرونة إلى مقلاة مع خليط زيت الزيتون والبوتارجا ، وحركها حتى تمتزج مع ملعقة مطاطية',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.deepOrange,
                            Colors.orange,
                            Colors.orangeAccent,
                          ]),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.format_list_numbered),
                            Expanded(
                              child: Text(
                                HomePageState.arabicvalue == false
                                    ? 'Using tongs, transfer pasta to skillet (which remains off-heat), and reserve remaining pasta cooking water. Alternatively, drain pasta using a colander or fine-mesh strainer, making sure to reserve at least 1 cup (240ml) pasta cooking water. Rapidly stir and toss pasta until sauce is emulsified, evenly coats noodles, and pools around edges of the skillet, 30 seconds to 1 minute, adding more pasta cooking water in 1/4 cup (60ml) increments as needed to adjust consistency of sauce'
                                    : 'باستخدام الملقط ، انقل المعكرونة إلى المقلاة (التي تظل بعيدة عن الحرارة) ، واحتفظ بمياه الطهي المتبقية. بدلاً من ذلك ، صفي المعكرونة باستخدام مصفاة أو مصفاة شبكية دقيقة ، مع التأكد من الاحتفاظ بكوب واحد على الأقل (240 مل) من ماء طهي المعكرونة. قلب المعكرونة سريعًا وقلبها حتى تصبح الصلصة مستحلبًا ، وقم بتغطية المعكرونة بالتساوي ، وبرك حول حواف المقلاة ، من 30 ثانية إلى دقيقة واحدة ، مع إضافة المزيد من ماء طهي المعكرونة في 1/4 كوب (60 مل) زيادات حسب الحاجة لضبط تناسق الصلصة',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.deepOrange,
                            Colors.orange,
                            Colors.orangeAccent,
                          ]),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.format_list_numbered),
                            Expanded(
                              child: Text(
                                HomePageState.arabicvalue == false
                                    ? 'Add parsley, lemon juice and zest, and stir to combine. Season with salt to taste. Divide between individual serving bowls, grate remaining bottarga over top, and serve'
                                    : 'يُضاف البقدونس وعصير الليمون والقشر ويُحرّك المزيج. تبلها مع ملح للمذاق. قسّميها بين أوعية تقديم فردية ، وابشري ما تبقى من بوتارجا فوقها ، وقدميها',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )*/
            ],
          ),
        ),
      ),
    );
  }
}
