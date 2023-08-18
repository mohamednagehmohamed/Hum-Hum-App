//import 'dart:async';
//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:mealapplication/homepage.dart';
import 'package:mealapplication/modules/floatingbutton.dart';

//import 'package:mealapplication/widgets/categoryscreen.dart';

//void main() => runApp(Fattah());

class Fattah extends StatefulWidget {
  @override
  FattahState createState() => FattahState();
}

class FattahState extends State<Fattah> {
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
            HomePageState.arabicvalue == false ? 'Fattah' : 'فتة',
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
          showChildOpacityTransition: false,
          animSpeedFactor: 2,
          child: ListView(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: InteractiveViewer(
                      child: Image.asset(
                    'images/fattah.jpg',
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
                                  ? 'about 2 kg of red meat (beef is preferred) in big cubs'
                                  : 'حوالي 2 كجم من اللحوم الحمراء (يفضل لحم البقر) في الأشبال الكبيرة',
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
                                  ? ' big onion or 2 small ones'
                                  : 'بصلة كبيرة أو 2 صغيرة',
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
                                  ? '200 g/ 2 cups white short grain rice'
                                  : '200 غ / 2 كوب أرز أبيض قصير الحبة',
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
                                  ? 'full head of garlic'
                                  : 'رأس ثوم كامل',
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
                                  ? '1/2 cup white vinegar'
                                  : '1/2 كوب خل أبيض',
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
                                  ? '2 big tomatoes (optional)'
                                  : '2 طماطم كبيرة (اختياري)',
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
                                  ? '1 tbspButter/ Ghee/ 2 tbsp Olive oil'
                                  : '1 ملعقة كبيرة زبدة / سمن / 2 ملعقة كبيرة زيت زيتون',
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
                                  ? 'pieces of Egyptian bread(left) or Shami Pita bread(right) , if neither is found, tortilla flats would do'
                                  : 'قطع خبز مصري (يسار) أو خبز بيتا شامي (يمين) ، إذا لم يتم العثور على أي منهما ، فستعمل شرائح التورتيلا',
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
                                  ? 'first we start by cooking the meat in water, adding S&P and the onions, make sure the water is covering the meat and once it boils, turn the heat down and leave to cook'
                                  : 'نبدأ أولاً بطهي اللحم في الماء ، وإضافة ستاندرد آند بورز والبصل ، وتأكد من أن الماء يغطي اللحم ، وبمجرد أن يغلي ، خففي النار واتركيه لينضج',
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
                                  ? 'while the meat is cooking, start preparing the rice, now you can steam it or do it the Egyptian way which is as follows:in a hot pot, add the fat of your choice (butter, oil or ghee) now you can add the whole load of rice, cover in water, add salt and leave to boil, bring down the heat, cover and leave to cook. alternatively, you can first fry some of the rice until golden/fry some Shaaria (capellini pasta) or what we locally call lesaan asfour (bird tongue) pasta, which i am sure they have a name for in Italianonce your choice of the above is golden, continue as before, adding the rice, mixing, adding water to cover and salt to taste, leave to bubble, cover, turn the heat down and leave to cook'
                                  : 'أثناء طهي اللحم ابدئي بتحضير الأرز والآن يمكنك طهيه بالبخار أو بالطريقة المصرية وهي كالتالي:في وعاء ساخن ، نضيف الدهون التي تختارها (زبدة ، زيت أو سمن) الآن يمكنك إضافة حمولة الأرز كاملة ، وتغطيتها بالماء ، وإضافة الملح وتركها حتى الغليان ، وخفض الحرارة ، وتغطيتها وتترك حتى تنضج بدلاً من ذلك ، يمكنك أولاً قلي بعض الأرز حتى يصبح لونه ذهبياً / قلي بعض الشعيرية (باستا كابيليني) أو ما نسميه محليًا ليسان عصفور (لسان الطيور) ، وأنا متأكد من أن لديهم اسمًا باللغة الإيطالية بمجرد أن يصبح اختيارك لما سبق ذهبيًا ، استمر كما كان من قبل ، أضف الأرز والخلط وإضافة الماء للتغطية والملح حسب الرغبة ، اتركه في الفقاعات ، غطه ، خفف الحرارة واتركه ليطهى',
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
                                  ? 'now we prepare the bread, some people like using it as is, and others prefer to toast it in the oven, some go one step further and fry the bread after toasting.. your call, the frying gives more taste but it also adds calories'
                                  : 'الآن نقوم بإعداد الخبز ، بعض الناس يحبون استخدامه كما هو ، والبعض الآخر يفضل تحميصه في الفرن ، والبعض يذهب خطوة أخرى ويقلي الخبز بعد التحميص .. مكالمتك ، القلي يعطي طعمًا أكثر ولكنه يضيف أيضًا سعرات حرارية',
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
                                  ? 'now to the daqqa - which is the name of the mix of liquids and spices we add to flavour some dishes, differs from one recipe to the other - so first we peel the garlic, mince it, season with S&P'
                                  : 'الآن إلى الدقة - وهو اسم مزيج السوائل والتوابل التي نضيفها لإضفاء نكهة على بعض الأطباق ، ويختلف من وصفة إلى أخرى - لذلك نقشر الثوم أولاً ونفرمه ونتبله بـ S&P',
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
                                  ? 'put aside 1 tbsp of that mix and fry the rest in a hot pan, with the type of fat you chose to use, until golden. add the vinegar and leave to boil then add little bit of water and taste, it should taste strongly of vinegar but not too strong'
                                  : 'ضعي جانباً 1 ملعقة كبيرة من هذا المزيج واقلي الباقي في مقلاة ساخنة ، مع نوع الدهون التي اخترت استخدامها ، حتى يصبح لونها ذهبياً. نضيف الخل ونتركه يغلي ثم نضيف القليل من الماء ونكه ، يجب أن يكون طعم الخل بقوة ولكن ليس قويا جدا',
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
                                  ? 'if you chose to add tomatoes, clean and cut and make into juice, and use instead of the water in the previous step, leave to cook - should be done after about 5 minutes of boiling- and thats it for the daqqa/sauce'
                                  : 'إذا اخترت إضافة الطماطم ، نظفها ونقطعها وتحولها إلى عصير ، واستخدمها بدلاً من الماء في الخطوة السابقة ، اتركها للطهي - يجب أن تنضج بعد حوالي 5 دقائق من الغليان - وهذا كل شيء للدقة / الصلصة',
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
                                  ? 'now to the serving stepsstart by shredding the bread into bite size bits, now if you choose to fry them you do that then add some of the previously prepared daqqa/sauce to the bread in the pan, enough to moisten the bread and add about one ladle of meat stock, let it be absorbed then move to the serving plate'
                                  : 'ابدأ بتقطيع الخبز إلى قطع صغيرة الحجم ، والآن إذا اخترت قليها ، قم بذلك ثم أضف بعضًا من الدقة / الصلصة المعدة مسبقًا إلى الخبز في المقلاة ، وهو ما يكفي لترطيب الخبز وإضافة حوالي مغرفة واحدة من مرق اللحم اتركيه لامتصاصه ثم انقله إلى طبق التقديم',
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
                                  ? 'if you chose not to fry the bread, you do the above directly in the serving plate'
                                  : 'إذا اخترت عدم قلي الخبز ، عليك القيام بما ورد أعلاه مباشرة في طبق التقديم',
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
                                  ? 'next step is to add some of the previously cooked meat, about two pieces , cut into think strips and distribute on top of the soaked bread, then ad a little bit more daqqa/sauce'
                                  : 'الخطوة التالية هي إضافة جزء من اللحم المطبوخ مسبقًا ، حوالي قطعتين ، مقطعة إلى شرائح فكرية وتوزيعها فوق الخبز المنقوع ، ثم إضافة المزيد من الدقة / الصلصة',
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
                                  ? 'then we add the rice, add few pieces of meat and pour the rest of the daqqa/sauce on top.the rest of the meat we sauté with some butter and the saved garlic mix and serve on the side'
                                  : 'ثم نضيف الارز ونضيف بضع قطع من اللحم ونسكب باقي الدقه / الصلصة فوق باقي اللحم نقليه مع بعض الزبدة وخلطة الثوم المحفوظة ونقدم على الجانب',
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
                                  ? 'if you are into savoury dishes i am pretty sure you will like this one and make it again and again'
                                  : 'إذا كنت في أطباق لذيذة ، فأنا متأكد من أنك ستحب هذا الطبق وتجعله مرارًا وتكرارًا',
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
