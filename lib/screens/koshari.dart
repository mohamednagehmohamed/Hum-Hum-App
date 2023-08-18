//import 'dart:async';
//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:mealapplication/homepage.dart';
import 'package:mealapplication/modules/floatingbutton.dart';

//import 'package:mealapplication/widgets/categoryscreen.dart';

//void main() => runApp(Koshari());

class Koshari extends StatefulWidget {
  @override
  KoshariState createState() => KoshariState();
}

class KoshariState extends State<Koshari> {
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
            HomePageState.arabicvalue == false ? 'Koshari' : 'كشري',
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
        body: ListView(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: InteractiveViewer(
                    child: Image.asset(
                  'images/koshari.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ))),
            SizedBox(
              height: 8,
            ),
            Center(
              child: Text(
                HomePageState.arabicvalue == false ? 'Ingredients' : ' مكونات ',
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
                                ? '1 ½ cup brown lentils, picked over and well-rinsed'
                                : '1 كوب عدس بني ، مقطوف ومغسل جيداً',
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
                                ? '1 ½ cup medium-grain rice, rinsed, soaked in water for 15 minutes, drained'
                                : '1 كوب أرز متوسط ​​الحبة ، مغسول ، منقوع في الماء لمدة 15 دقيقة ، ومصفى',
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
                                ? '½ teaspoon each salt and pepper'
                                : 'نصف ملعقة صغيرة من الملح والفلفل',
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
                                ? '½ teaspoon coriander'
                                : 'نصف ملعقة صغيرة كزبرة',
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
                                ? '2 cups elbow pasta'
                                : '2 أكواب باستا',
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
                                ? 'Cooking oil'
                                : 'زيت الطهي',
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
                                ? 'Water'
                                : 'ماء',
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
                            //color: Colors.lightBlueAccent,
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15))),
                        child: ListTile(
                          title: Text(
                            HomePageState.arabicvalue == false
                                ? '½ cup water'
                                : ' نصف كوب ماء ',
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
                                ? '1 15-oz can chickpeas, rinsed, drained and warmed'
                                : '1 عبوة سعة 15 أوقية من الحمص ، مغسول ، مصفى ومدفأ',
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
                                ? 'Cook the lentils. Bring lentils and 4 cups of water to a boil in a medium pot or saucepan over high heat. Reduce the heat to low and cook until lentils are just tender (15-17 minutes). Drain from water and season with a little salt. (Note: when the lentils are ready, they should not be fully cooked. They should be only par-cooked and still have a bite to them as they need to finish cooking with the rice).'
                                : 'اطبخ العدس. يُغلى العدس و 4 أكواب من الماء في قدر متوسط ​​الحجم على نار عالية. اخفض الحرارة إلى درجة منخفضة واتركه يطهى حتى ينضج العدس (15-17 دقيقة). يُصفّى من الماء ويُتبّل بقليل من الملح. (ملحوظة: عندما يصبح العدس جاهزًا ، لا يجب أن ينضج تمامًا. يجب أن يكون مطبوخًا بشكل جزئي فقط ولا يزال لديه قضمة لأنه يحتاج إلى إنهاء الطهي مع الأرز).',
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
                                ? 'Now, for the rice. Drain the rice from its soaking water. Combine the par-cooked lentils and the rice in the saucepan over medium-high heat with 1 tablespoon cooking oil, salt, pepper, and coriander. Cook for 3 minutes, stirring regularly. Add warm water to cover the rice and lentil mixture by about 1 ½ inches (youll probably use about 3 cups of water here). Bring to a boil; the water should reduce a bit. Now cover and cook until all the liquid has been absorbed and both the rice and lentils are well cooked through (about 20 minutes).  Keep covered and undisturbed for 5 minutes or so'
                                : 'الآن ، من أجل الأرز. صفي الأرز من ماء النقع. يُمزج العدس المطبوخ مع الأرز في القدر على نار متوسطة عالية مع ملعقة كبيرة من زيت الطهي والملح والفلفل والكزبرة. يُطهى لمدة 3 دقائق مع التحريك بانتظام. أضف الماء الدافئ لتغطية خليط الأرز والعدس بحوالي 1 بوصة (ربما ستستخدم حوالي 3 أكواب من الماء هنا). اجلب ليغلي يجب أن يقلل الماء قليلاً. الآن غطي المزيج واطهيه حتى يمتص كل السائل وينضج كل من الأرز والعدس جيدًا (حوالي 20 دقيقة). حافظ على تغطيته ودون إزعاج لمدة 5 دقائق أو نحو ذلك',
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
                                ? 'Now make the pasta. While the rice and lentils are cooking, make the pasta according to package instructions by adding the elbow pasta to boiling water with a dash of salt and a little oil. Cook until the pasta is al dente. Drain'
                                : 'الآن اصنع الباستا. أثناء طهي الأرز والعدس ، حضري المعكرونة وفقًا لتعليمات العبوة عن طريق إضافة باستا الكوع إلى الماء المغلي مع رشة ملح وقليل من الزيت. اطبخي حتى تنضج المعكرونة. بالوعة',
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
                                ? 'Cover the chickpeas and warm in the microwave briefly before serving'
                                : 'يُغطى الحمص ويُسخن في الميكروويف لفترة وجيزة قبل التقديم',
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
                                ? 'Bake in preheated oven for 25 minutes. Remove foil, and bake an additional 25 minutes. Cool for 15 minutes before serving.'
                                : 'تخبز في فرن مسخن لمدة 25 دقيقة. أزيلي ورق القصدير واخبزيه لمدة 25 دقيقة إضافية. تبرد لمدة 15 دقيقة قبل التقديم. ',
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
                                ? 'The sauce will be done once the spaghetti are.'
                                : ' ستنضج الصلصة بمجرد نضج الإسباجيتي. ',
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
                                ? 'Feel free to add some cheese on top of the finished dish.'
                                : 'لا تتردد في إضافة بعض الجبن فوق الطبق النهائي.',
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
          ],
        ),
      ),
    );
  }
}
