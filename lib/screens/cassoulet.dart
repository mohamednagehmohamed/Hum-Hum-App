//import 'dart:async';
//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:mealapplication/homepage.dart';
import 'package:mealapplication/modules/floatingbutton.dart';


//import 'package:mealapplication/widgets/categoryscreen.dart';

//void main() => runApp(Cassoulet());

class Cassoulet extends StatefulWidget {
  @override
  CassouletState createState() => CassouletState();
}

class CassouletState extends State<Cassoulet> {
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
            HomePageState.arabicvalue == false ? 'Cassoulet' : 'كاسوليت',
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
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: InteractiveViewer(
                      child: Image.asset(
                    'images/cassoulet.jpg',
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
                                  ? '1 pound dried great northern beans'
                                  : '1 باوند من الفاصوليا الشمالية المجففة',
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
                                  ? '2 1/2 quarts unsalted chicken broth (10 cups)'
                                  : '2 1/2 ليتر من مرق الدجاج غير المملح (10 أكواب)',
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
                                  ? '3 ounces salt pork'
                                  : '3 أونصات ملح لحم الخنزير',
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
                                  ? '2 duck confit legs'
                                  : '2 بطة أرجل كونفيت',
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
                                  ? '8 ounces fresh French garlic sausage, such as saucisse de Toulouse or saucisse à l’ail'
                                  : '8 أونصات من النقانق الفرنسية الطازجة بالثوم ، مثل صلصة دي تولوز أو صلصة لايل',
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
                                  ? '4 ounces boneless pork shoulder or belly'
                                  : '4 أونصات من لحم كتف الخنزير أو بطنه',
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
                                  ? '4 ounces fresh pork skin (optional)'
                                  : '4 أونصات من جلد الخنزير الطازج (اختياري)',
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
                                  ? '3 cloves garlic'
                                  : '3 فصوص ثوم',
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
                                  ? '1 teaspoon ground nutmeg'
                                  : '1 ملعقة صغيرة جوزة الطيب',
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
                                  ? '1/4 teaspoon kosher salt, plus more as needed'
                                  : '1/4 ملعقة صغيرة ملح كوشير بالإضافة إلى المزيد حسب الحاجة',
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
                                  ? 'Freshly ground black pepper'
                                  : 'فلفل أسود مطحون طازجاً',
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
                                  ? 'Soak the beans. Place 1 pound dried great northern beans in a large bowl. Add enough cold water to cover the beans by 2 to 3 inches. Soak at room temperature for at least 8 hours or preferably overnight'
                                  : 'نقع الفول. ضع 1 رطل من الفاصوليا الشمالية المجففة في وعاء كبير. أضف كمية كافية من الماء البارد لتغطية الفول بمقدار 2 إلى 3 بوصات. نقع في درجة حرارة الغرفة لمدة 8 ساعات على الأقل أو يفضل طوال الليل',
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
                                  ? 'Boil the beans for 5 minutes. Drain the beans. Place the beans in a large pot and add enough cold water to cover them by 2 inches. Bring to a rapid boil over medium-high heat and boil for 5 minutes. Drain again'
                                  : 'اسلقي الفاصوليا لمدة 5 دقائق. صفي الفاصوليا. ضعي الفول في قدر كبير وأضيفي كمية كافية من الماء البارد لتغطيهما بوصتين. يُغلى المزيج بسرعة على نار متوسطة عالية ويُغلى لمدة 5 دقائق. استنزاف مرة أخرى',
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
                                  ? 'Cook the beans. Bring 2 1/2 quarts unsalted chicken stock or broth to a boil over medium-high heat in the same pot. Add the beans, bring back to a boil, and skim off any scum. Reduce the heat to maintain a simmer and cook uncovered until the beans are just tender but still whole and unbroken, 45 minutes to 1 hour. Meanwhile, prepare the meats'
                                  : 'اطبخي الفول. احضر 2 1/2 لتر من مرق الدجاج غير المملح أو المرق ليغلي على نار متوسطة عالية في نفس القدر. أضيفي الفاصوليا واتركيها تغلي مرة أخرى ، وقومي بإزالة أي حثالة. خففي الحرارة لتحافظي على نار هادئة واطبخي مكشوفًا حتى تنضج الفاصولياء ولكن لا تزال كاملة وغير مكسورة ، 45 دقيقة إلى ساعة واحدة. في غضون ذلك ، تحضير اللحوم',
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
                                  ? 'Cut the meats. Dice 3 ounces salt pork. Halve 2 duck confit legs between the joint so that you have 2 drumsticks and 2 thighs. Cut 8 ounces garlic sausage into 2-inch pieces. Cut 4 ounces boneless pork shoulder or belly into 2-inch chunks. Cut 4 ounces fresh pork skin into 2-inch squares if using'
                                  : 'قطع اللحوم. قطع مكعبات 3 أونصات من لحم الخنزير المملح. قم بتقطيع ساقي بطتين بين المفصل بحيث يكون لديك أفخاذ 2 وفخذان. قطع 8 أونصات من النقانق بالثوم إلى قطع بحجم 2 بوصة. قطع 4 أونصات من كتف أو بطن الخنزير المخلوع إلى قطع بحجم 2 بوصة. قطع 4 أونصات من جلد الخنزير الطازج إلى مربعات بحجم 2 بوصة إذا كنت تستخدم',
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
                                  ? 'Make a salt pork and garlic paste. Place the salt pork and 3 garlic cloves in a food processor fitted with the blade attachment. Process into a sticky paste, about 15 seconds. (Alternatively, chop by hand into a paste.) Refrigerate until ready to use'
                                  : 'اصنع عجينة من لحم الخنزير بالملح والثوم. ضع ملح الخنزير و 3 فصوص من الثوم في محضر طعام مزود بالشفرة المرفقة. تُطحن في عجينة لزجة ، حوالي 15 ثانية. (بدلاً من ذلك ، قم بفرمها يدويًا في عجينة). ضعه في الثلاجة حتى يصبح جاهزًا للاستخدام',
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
                                  ? 'Sear the duck and pork. Place the duck skin-side down in a large frying pan over medium-low heat and cook until golden-brown, 5 to 10 minutes per side. Transfer to a plate. Add the sausage to the pan and cook into browned, about 4 minutes per side. Transfer to the plate. Add the pork belly or shoulder and cook until browned on a few sides, about 3 minutes per side. Transfer to the plate. Refrigerate the meats until ready to use'
                                  : ' احرق البطة ولحم الخنزير. ضع جانب جلد البط لأسفل في مقلاة كبيرة على نار متوسطة منخفضة واتركه حتى يصبح لونه بنياً ذهبياً ، من 5 إلى 10 دقائق لكل جانب. نقل إلى طبق. يُضاف النقانق إلى المقلاة ويُطهى حتى يتحول إلى اللون البني ، حوالي 4 دقائق لكل جانب. نقل إلى اللوحة. يُضاف لحم بطن أو كتف الخنزير ويُطهى حتى يتحول إلى اللون البني من عدة جوانب ، حوالي 3 دقائق لكل جانب. نقل إلى اللوحة. برد اللحوم حتى تصبح جاهزة للاستخدام',
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
                                  ? 'Cool the beans. When the beans are ready, remove from the heat and let cool until warm to the touch, about 1 hour'
                                  : 'تبرد الفاصوليا. عندما تصبح الفاصوليا جاهزة ، تُرفع عن النار وتترك لتبرد حتى تدفئ ، حوالي ساعة واحدة',
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
                                  ? 'Season the beans. Add the garlic-pork paste, 1 teaspoon ground nutmeg, and 1/4 teaspoon kosher salt to the beans and stir gently to combine, breaking up the paste so that is it evenly distributed'
                                  : 'تبلي الفاصوليا. أضيفي معجون الثوم ولحم الخنزير ، وملعقة صغيرة من جوزة الطيب المطحون ، وربع ملعقة صغيرة من ملح الكوشر إلى الفاصوليا وقلبيها برفق حتى تمتزج ، وكسّرت العجينة لتوزيعها بالتساوي',
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
                                  ? 'Drain the beans. Pour the bean mixture through a strainer fitted over a large bowl'
                                  : 'صفي الفاصوليا. يُسكب مزيج الفاصوليا في مصفاة تُركب فوق وعاء كبير',
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
                                  ? 'Line the cooking vessel. Use a cassole if you have one. Otherwise you can use a 3 1/2-quart Dutch oven or other heavy-bottomed, oven safe pot. Line the bottom of the vessel with the cut pork skin if using'
                                  : 'ضع وعاء الطبخ. استخدم كاسول إذا كان لديك واحد. خلاف ذلك ، يمكنك استخدام فرن هولندي 3 1/2 لتر أو أي قدر آخر آمن للفرن ذي قاع ثقيل. قم بتبطين قاع الإناء بجلد الخنزير المقطوع إذا كنت تستخدم.',
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
                                  ? 'Assemble the cassoulet. Layer half of the beans on top of the pork skin. Place the duck confit and pork shoulder or belly on the beans. Layer the remaining beans over the duck and pork. Top with the sausages, nestling them into the beans until just their tops are visible.'
                                  : 'قم بتجميع الكاسوليت. ضع نصف الفاصوليا فوق جلد الخنزير. ضع كونفيت البط وكتف لحم الخنزير أو البطن على الفاصوليا. ضعي الفاصوليا المتبقية فوق البط ولحم الخنزير. ضعي النقانق فوقها ، ودشنيها في الفاصوليا حتى يظهر الجزء العلوي منها فقط.',
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
                                  ? 'Top with cooking liquid. Pour enough of the bean cooking liquid into the cassoulet to barely cover the beans. Sprinkle a dusting of freshly ground black pepper across the surface. You can immediately move on to the next step and bake it for 3 hours, or the cassoulet can be covered and refrigerated overnight. Refrigerate the remaining bean cooking liquid'
                                  : 'ضع سائل الطهي فوقها. اسكب كمية كافية من سائل طبخ الفاصوليا في الكاسوليت بحيث تكاد تغطي الفول. رش القليل من الفلفل الأسود المطحون حديثًا على السطح. يمكنك الانتقال فورًا إلى الخطوة التالية وتخبزها لمدة 3 ساعات ، أو يمكن تغطية الكاسوليت وتبريده طوال الليل. ضعي سائل الطهي المتبقي في الثلاجة',
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
                                  ? 'Bake the cassoulet for 3 hours. Arrange a rack in the middle of the oven and heat the oven to 325ºF. Bake the cassoulet uncovered for 3 hours. While it is cooking, it will develop a brown crust on top. Pierce the crust and moisten the surface by spooning some of the cooking liquid over it, taking care not to disturb the layers below. Allow the crust to re-form 2 or 3 times. If the beans start to look dry, moisten them with several spoonfuls of extra bean-cooking liquid or chicken broth. Let the cassoulet cool to room temperature, then cover and refrigerate overnight'
                                  : 'اخبزي الكاسوليه لمدة 3 ساعات. رتبي رفًا في منتصف الفرن وسخني الفرن إلى 325 درجة فهرنهايت. اخبزي الكاسوليه بدون غطاء لمدة 3 ساعات. أثناء الطهي ، ستظهر قشرة بنية في الأعلى. اثقبي القشرة ورطبي السطح عن طريق وضع القليل من سائل الطهي فوقه ، مع الحرص على عدم تعكير صفو الطبقات السفلية. دع القشرة تتشكل مرتين أو ثلاث مرات. إذا بدأت الفاصوليا تبدو جافة ، بللها بعدة ملاعق من سائل طبخ الفاصوليا أو مرق الدجاج. اتركي الكاسوليه يبرد حتى يصل إلى درجة حرارة الغرفة ، ثم غطيه وضعيه في الثلاجة طوال الليل',
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
                                  ? 'Bake the cassoulet for 1 1/2 hours. Arrange a rack in the middle of the oven and heat the oven to 325ºF. Uncover the cassoulet and bake for 1 1/2 hours, breaking the crust with a spoon and moistening the surface at least twice. If the beans look dry, add spoonfuls of extra bean-cooking liquid or chicken broth. You can serve the cassoulet now, or let it cool to room temperature and cover and refrigerate overnight'
                                  : 'اخبزي الكاسوليه لمدة ساعة ونصف. رتبي رفًا في منتصف الفرن وسخني الفرن إلى 325 درجة فهرنهايت. انزع غطاء الكاسوليت واخبزيها لمدة ساعة ونصف ، وكسر القشرة بملعقة ورطب السطح مرتين على الأقل. إذا بدت الفاصوليا جافة ، أضف ملاعق من سائل طهي الفاصوليا أو مرق الدجاج. يمكنك تقديم الكاسوليه الآن ، أو تركه يبرد إلى درجة حرارة الغرفة وتغطيته وتبريده طوال الليل',
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
                                  ? 'Heat the cassoulet for 1 1/2 hours. Arrange a rack in the middle of the oven and heat the oven to 325ºF. Heat the cassoulet for 1 1/2 hours, moistening with extra bean-cooking liquid or chicken broth as necessary. Serve immediately in its vessel, gently simmering and unstirred'
                                  : 'سخني الكاسوليه لمدة ساعة ونصف. رتبي رفًا في منتصف الفرن وسخني الفرن إلى 325 درجة فهرنهايت. سخني الكاسوليه لمدة ساعة ونصف ، مع ترطيبها بسائل إضافي لطهي الفاصوليا أو مرق الدجاج حسب الضرورة. قدميها على الفور في إناءها ، على نار هادئة بلطف وبدون تحريك',
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
