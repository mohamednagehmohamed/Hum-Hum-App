//import 'dart:async';
//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:mealapplication/homepage.dart';
import 'package:mealapplication/modules/floatingbutton.dart';

//import 'package:mealapplication/widgets/categoryscreen.dart';

//void main() => runApp(Brot());

class Brot extends StatefulWidget {
  @override
  BrotState createState() => BrotState();
}

class BrotState extends State<Brot> {
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
            HomePageState.arabicvalue == false
                ? 'Brot & Brötchen'
                : 'لفات الخبز',
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
              InteractiveViewer(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'images/brotchen.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ))),
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
                                  ? '2 tablespoons active dry yeast'
                                  : '2 ملاعق كبيرة خميرة جافة نشطة',
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
                                  ? '1 tablespoon white sugar'
                                  : '1 ملعقة كبيرة سكر أبيض',
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
                                  ? ' 2  ½ cups warm water (110 degrees F)'
                                  : '2 1/2 كوب ماء دافئ (110 درجة فهرنهايت)ا',
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
                                  ? '2 tablespoons shortening'
                                  : '2 ملاعق كبيرة سمن',
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
                                  ? '2 teaspoons salt'
                                  : '2 ملاعق صغيرة ملح',
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
                                  ? '7 cups all purpose flour'
                                  : '7 أكواب طحين لجميع الأغراض',
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
                                  ? '3 egg whites, stiffly beaten'
                                  : '3 بياض بيض مخفوق بخشونة',
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
                                  ? '1 egg white (for egg wash)'
                                  : ' 1 بياض بيضة (لغسل البيض)',
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
                                  ? '2 tablespoons cold milk'
                                  : '2 ملاعق كبيرة حليب بارد',
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
                                  ? 'In a large mixing bowl, dissolve yeast and sugar in warm water. Let sit until creamy; about 10 minutes'
                                  : 'في وعاء كبير ، تُذوّب الخميرة والسكر في ماء دافئ. اتركيها حتى تصبح كريمية. حوالي 10 دقائق',
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
                                  ? 'Mix in shortening, salt and 3 cups of the flour. Beat with dough whisk or heavy spoon for 2 minutes. Fold in egg whites. Gradually add flour 1/4 cup at a time, until dough forms a mass and begins to pull away from bowl. Turn onto a floured surface. Knead, adding more flour as necessary, for 8 to 10 minutes, until smooth and elastic with bubbles'
                                  : 'اخلطي السمن والملح و 3 أكواب من الطحين. يخفق مع خفق العجين أو ملعقة ثقيلة لمدة دقيقتين. يضاف بياض البيض. أضيفي ربع كوب من الدقيق تدريجيًا في المرة الواحدة ، حتى تتكون كتلة العجين وتبدأ في الانسحاب بعيدًا عن الوعاء. اقلبها على سطح مرشوش بالدقيق. اعجن ، مع إضافة المزيد من الدقيق حسب الضرورة ، لمدة 8 إلى 10 دقائق ، حتى تصبح ناعمة ومرنة مع الفقاعات',
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
                                  ? 'Lightly oil a large mixing bowl, place the dough in the bowl and turn to coat with oil. Cover with a damp cloth and let rise in a warm place until doubled in volume, about 1 hour. Deflate the dough, form into a round and let rise again until doubled, about 45 minutes'
                                  : 'يُدهن وعاء كبير بالزيت قليلاً ، ثم توضع العجينة في الوعاء وتُغطى بالزيت. غطيها بقطعة قماش مبللة واتركيها ترتفع في مكان دافئ حتى يتضاعف حجمها ، حوالي ساعة. تُفرغ العجينة من الهواء ، وتشكل دائريًا وتترك تتخمر مرة أخرى حتى تتضاعف ، حوالي 45 دقيقة',
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
                                  ? 'Preheat oven to 425 degrees F (220 degrees C). Deflate the dough and turn it out onto a lightly floured surface. Divide the dough into 24 equal pieces and form into oval rolls about 3 1/2 inches long. Place on lightly greased baking sheets, cover and let rise until doubled in volume, about 40 minutes'
                                  : 'سخني الفرن إلى 425 درجة فهرنهايت (220 درجة مئوية). يُفرغ العجين من الهواء ويقلبه على سطح مرشوش بدقيق خفيف. قسّمي العجينة إلى 24 قطعة متساوية وشكلها على شكل لفات بيضاوية طولها حوالي 3 1/2 بوصات. ضعيها على صفائح خبز مدهونة بقليل من الزيت ، ثم غطيها واتركيها ترتفع حتى يتضاعف حجمها ، حوالي 40 دقيقة',
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
                                  ? 'Place an empty baking sheet on the bottom rack of the oven. In a small bowl, lightly beat the egg white with the 2 tablespoons of milk to make the egg wash. Lightly brush the risen rolls with the egg wash. Place 1 cup of ice cubes on the hot baking sheet in the oven and immediately place the rolls in the oven'
                                  : 'ضع صينية خبز فارغة على الرف السفلي للفرن. في وعاء صغير ، اخفقي بياض البيض مع ملعقتين كبيرتين من الحليب لتحضير البيض يغسل. ادهني البكرات المرتفعة بقليل من بياض البيض. ضعي كوبًا واحدًا من مكعبات الثلج على صينية الخبز الساخنة في الفرن وضعيها على الفور في الفرن',
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
                                  ? 'Bake at 425 degrees F (220 degrees C) for about 20 minutes or until the tops are golden brown. Remove to a wire rack and cool'
                                  : 'تُخبز في درجة حرارة 425 درجة فهرنهايت (220 درجة مئوية) لمدة 20 دقيقة أو حتى يصبح لونها بنياً ذهبياً. ترفع إلى رف السلك وتبرد',
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
      ),
    );
  }
}
