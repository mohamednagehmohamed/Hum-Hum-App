//import 'dart:async';
//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:mealapplication/homepage.dart';
import 'package:mealapplication/modules/floatingbutton.dart';

//import 'package:mealapplication/widgets/categoryscreen.dart';

//void main() => runApp(Shakshoka());

class Shakshoka extends StatefulWidget {
  @override
  ShakshokaState createState() => ShakshokaState();
}

class ShakshokaState extends State<Shakshoka> {
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
            HomePageState.arabicvalue == false ? 'Shakshuka' : 'شكشوكة',
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
                  'images/Shakshuka-19-500x500.jpg',
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
                                ? 'Extra virgin olive oil '
                                : 'زيت الزيتون البكر الممتاز',
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
                                ? '1 large yellow onion, chopped'
                                : '1 بصلة صفراء كبيرة مفرومة',
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
                                ? '2 green peppers, chopped'
                                : '2 فلفل أخضر مفروم',
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
                                ? '2 garlic cloves, peeled, chopped'
                                : '2 فص ثوم مقشر ومفروم',
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
                                ? '1 teaspoon ground coriander'
                                : '1 ملعقة صغيرة كزبرة مطحونة',
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
                                ? '1 teaspoon sweet paprika'
                                : '1 ملعقة صغيرة بابريكا حلوة',
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
                                ? '½ teaspoon ground cumin'
                                : 'نصف ملعقة صغيرة كمون مطحون',
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
                                ? 'Pinch red pepper flakes (optional)'
                                : 'رشة من رقائق الفلفل الأحمر (اختياري)',
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
                                ? 'Salt and pepper'
                                : 'ملح وفلفل',
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
                                ? '6 Vine-ripe tomatoes, chopped (about 6 cups chopped tomatoes)'
                                : '6 حبات طماطم ناضجة مفرومة (حوالي 6 أكواب طماطم مفرومة)',
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
                                ? '½ cup tomato sauce'
                                : 'نصف كوب صلصة طماطم',
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
                                ? '6 large eggs'
                                : '6 بيضات كبيرة',
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
                                ? '¼ cup chopped fresh parsley leaves (about 0.2 ounces or 5 grams)'
                                : 'ربع كوب من أوراق البقدونس الطازجة المفرومة (حوالي 0.2 أونصة أو 5 جرام)',
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
                                ? '¼ cup chopped fresh mint leaves (about 0.2 ounces or 5 grams)'
                                : 'ربع كوب من أوراق النعناع الطازجة المفرومة (حوالي 0.2 أونصة أو 5 جرامات)',
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
                                ? 'Heat 3 tablespoon olive oil in a large cast iron skillet. Add the onions, green peppers, garlic, spices, pinch salt and pepper. Cook, stirring occasionally, until the vegetables have softened, about 5 minutes'
                                : 'سخني 3 ملاعق كبيرة زيت زيتون في مقلاة كبيرة من الحديد الزهر. نضيف البصل والفلفل الأخضر والثوم والبهارات ورشة الملح والفلفل. يُطهى مع التحريك من حين لآخر ، حتى تنضج الخضار ، حوالي 5 دقائق',
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
                                ? 'Add the tomatoes and tomato sauce. Cover and let simmer for about 15 minutes. Uncover and cook a bit longer to allow the mixture to reduce and thicken. Taste and adjust the seasoning to your liking'
                                : 'نضيف الطماطم وصلصة الطماطم. غطيه واتركيه ينضج لمدة 15 دقيقة. اكشف الغطاء واطهيه لفترة أطول قليلًا للسماح للخليط بالتقليل والتكثيف. تذوق واضبط التوابل حسب رغبتك',
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
                                ? 'Using a wooden spoon, make 6 indentations, or "wells," in the tomato mixture (make sure the indentations are spaced out). Gently crack an egg into each indention'
                                : 'باستخدام ملعقة خشبية ، قم بعمل 6 مسافات بادئة ، أو "آبار" في خليط الطماطم (تأكد من تباعد المسافات البادئة). اكسر بيضة برفق في كل فجوة',
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
                                ? 'Reduce the heat, cover the skillet, and cook on low until the egg whites are set'
                                : 'خففي الحرارة وغطي المقلاة واتركيها على نار هادئة حتى يتماسك بياض البيض',
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
                                ? 'Uncover and add the fresh parsley and mint. You can add more black pepper or crushed red pepper, if you like. Serve with warm pita, challah bread, or your choice of crusty bread'
                                : 'اكشف الغطاء وأضف البقدونس الطازج والنعناع. يمكنك إضافة المزيد من الفلفل الأسود أو الفلفل الأحمر المطحون إذا أردت. تقدم مع خبز بيتا دافئ أو خبز شله أو اختيارك من الخبز المقرمش ',
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
