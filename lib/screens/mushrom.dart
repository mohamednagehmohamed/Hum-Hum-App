//import 'dart:async';
//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:mealapplication/homepage.dart';
import 'package:mealapplication/modules/floatingbutton.dart';

//import 'package:mealapplication/widgets/categoryscreen.dart';

//void main() => runApp(Mushrom());

class Mushrom extends StatefulWidget {
  @override
  MushromState createState() => MushromState();
}

class MushromState extends State<Mushrom> {
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
                ? 'Mushroom lasagne'
                : 'لازانيا الفطر',
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
                  'images/12recipehealth-articleLarge-v2.jpg',
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
                                ? 'ounce about 1 cup dried porcini or shiitake mushrooms'
                                : 'أونصة حوالي 1 كوب فطر بورسيني مجفف أو شيتاكي',
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
                                ? '1 tablespoon extra virgin olive oil'
                                : '1 ملعقة كبيرة زيت زيتون بكر ممتاز',
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
                                ? '2 shallots or 1 small onion, finely chopped'
                                : '2 كراث أو 1 بصلة صغيرة مفرومة ناعماً',
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
                                ? '2 to 3 garlic cloves, minced'
                                : '2 إلى 3 فصوص ثوم مفروم',
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
                                ? '1 pound cremini mushrooms, sliced Salt'
                                : '1 رطل من الفطر المقطّع إلى شرائح ملح',
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
                                ? '½ cup fruity red wine, such as a Côtes du Rhône or Syrah'
                                : 'ربع كوب نبيذ أحمر بطعم الفواكه ',
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
                                ? '1 teaspoon fresh thyme leaves Freshly ground pepper'
                                : '1 ملعقة صغيرة فلفل طازج',
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
                                ? '2 tablespoons extra virgin olive oil'
                                : '2 ملاعق كبيرة زيت زيتون صافي',
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
                                ? '2 tablespoons minced shallot or onion'
                                : '2 ملاعق كبيرة كراث مفروم أو بصل',
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
                                ? '2 tablespoons sifted all-purpose flour'
                                : '2 ملاعق كبيرة دقيق منخول لجميع الأغراض',
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
                                ? ' freshly ground pepper'
                                : 'الفلفل الطازج المطحون',
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
                                ? '½ pound no-boil lasagna noodles'
                                : '½ رطل من شعيرية اللازانيا التي لا تحتاج إلى سلق',
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
                                ? '4 ounces Parmesan cheese, grated 1 cup'
                                : '4 أونصات جبن بارميزان مبشور 1 كوب',
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
                                ? ' A few leaves of fresh sage (optional)'
                                : 'بضع أوراق من المريمية الطازجة (اختياري)',
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
                                ? 'Place the dried mushrooms in a glass measuring cup and pour 2 cups boiling water over them. Let soak 30 minutes, while you prepare the other ingredients. Place a strainer over a bowl, line it with cheesecloth or paper towels, and drain the mushrooms. Squeeze the mushrooms over the strainer to extract all the flavorful juices. If using shiitakes, cut away and discard the stems. Then rinse the mushrooms, away from the bowl with the soaking liquid, until they are free of sand. Squeeze dry and set aside. Chop coarsely. Measure out 1 1/2 cups of the soaking liquid and set aside'
                                : 'ضع الفطر المجفف في كوب قياس زجاجي واسكب فوقه كوبين من الماء المغلي. اتركيها تنقع لمدة 30 دقيقة ، بينما تحضرين المكونات الأخرى. ضع مصفاة فوق وعاء ، وقم بتغطيتها بقطعة قماش قطنية أو مناشف ورقية ، ثم صفي الفطر. اعصر الفطر فوق المصفاة لاستخراج جميع العصائر اللذيذة. إذا كنت تستخدم shiitakes ، فقم بقطع السيقان وتجاهلها. ثم اشطف الفطر بعيدًا عن الوعاء بسائل النقع حتى يتخلص من الرمل. يُعصر ويُترك جانباً. تقطيع خشن. قم بقياس 1 12 كوب من سائل النقع واتركه جانبًا',
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
                                ? 'Heat 1 tablespoon olive oil in a large, heavy skillet over medium heat and add the shallots or onion. Cook, stirring often, until tender, 3 to 5 minutes. Add the garlic, stir together for about 30 seconds, then add the fresh and reconstituted mushrooms and salt to taste. Cook, stirring often, until the mushrooms begin to soften and to sweat, about 5 minutes. Add the wine and turn the heat to high. Cook, stirring, until the liquid boils down and glazes the mushrooms, 5 to 10 minutes. Add thyme and stir in the mushroom soaking liquid. Bring to a simmer, add salt, and cook over medium-high heat, stirring often, until the mushrooms are thoroughly tender and fragrant and the surrounding broth has reduced by a little more than half, about 10 to 15 minutes. Remove from the heat, stir in some freshly ground pepper, taste and adjust salt'
                                : 'سخني 1 ملعقة كبيرة زيت زيتون في مقلاة كبيرة ثقيلة على نار متوسطة وأضيفي الكراث أو البصل. يُطهى مع التحريك كثيرًا ، حتى ينضج ، من 3 إلى 5 دقائق. يُضاف الثوم ويُقلب معًا لمدة 30 ثانية تقريبًا ، ثم يُضاف الفطر الطازج والمعاد تكوينه والملح حسب الرغبة. يُطهى مع التحريك كثيرًا ، حتى يبدأ الفطر في النعومة والتعرق ، حوالي 5 دقائق. نضيف النبيذ ونشعل النار على نار عالية. يُطهى المزيج مع التحريك حتى يغلي السائل ويصقل الفطر ، من 5 إلى 10 دقائق. يضاف الزعتر ويقلب في سائل نقع الفطر. يُغلى المزيج على نار خفيفة ، يُضاف الملح ، ويُطهى على نار متوسطة عالية ، مع التحريك كثيرًا ، حتى يصبح الفطر طريًا تمامًا ورائحته ، ويقل المرق المحيط بأكثر من النصف بقليل ، حوالي 10 إلى 15 دقيقة. يُرفع عن النار ويُضاف إليه بعض الفلفل المطحون الطازج ويُذوق ويُضبط الملح',
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
                                ? 'Meanwhile, make the béchamel. Heat the oil over medium heat in a heavy saucepan. Add the shallot or onion and cook, stirring, until softened, about 3 minutes. Stir in the flour and cook, stirring, for about 3 minutes, until smooth and bubbling, but not browned. It should have the texture of wet sand. Whisk in the milk all at once and bring to a simmer, whisking all the while, until the mixture begins to thicken. Turn the heat to very low and simmer, stirring often with a whisk and scraping the bottom and edges of the pan with a rubber spatula, for 10 to 15 minutes, until the sauce is thick and has lost its raw-flour taste. Season with salt and pepper. Strain while hot into the pan with the mushrooms'
                                : 'في هذه الأثناء ، أعدّي البشاميل. سخني الزيت على نار متوسطة في قدر ثقيل. يُضاف الكراث أو البصل ويُطهى المزيج مع التحريك حتى ينضج لمدة 3 دقائق. يُضاف الدقيق ويُطهى مع التحريك لمدة 3 دقائق تقريبًا حتى يصبح ناعمًا ويغلي ، لكن دون أن يتحول لونه إلى البني. يجب أن يكون لها ملمس الرمل الرطب. اخفقي الحليب دفعة واحدة واتركيه يغلي على نار هادئة مع الخفق طوال الوقت حتى يبدأ الخليط في التماسك. قلبي النار على نار هادئة واتركيها على نار هادئة مع التحريك كثيرًا باستخدام خفاقة وكشط قاع وحواف المقلاة بملعقة مطاطية لمدة 10 إلى 15 دقيقة حتى تصبح الصلصة كثيفة وتفقد مذاق الدقيق الخام. يتبل بالملح والفلفل. يصفى وهو ساخن في المقلاة مع الفطر',
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
                                ? 'Assemble the lasagna. Heat the oven to 350 degrees Fahrenheit. Oil or butter a 2-quart rectangular baking dish. Bring a large pot of water to a boil, salt generously and add 3 or 4 lasagna noodles, just the number you need for one layer. Cook only until flexible, and using tongs or a skimmer, remove from the pan and set on a kitchen towel to drain. Spoon a thin layer of béchamel and mushrooms over the bottom of the dish. Top with a layer of noodles. Spread a ladleful of the mushroom/béchamel mixture over the noodles and top with a layer of Parmesan. Cook the next layer of noodles and continue to repeat the layers (I get three layers in my pan), ending with a layer of the mushroom/béchamel mixture topped with Parmesan.  Cover with foil and place in the oven. Bake 30 minutes. Remove the foil, and if you want the edges of the noodles crispy and the top lightly browned, continue to bake uncovered for another 5 to 10 minutes. Serve hot or warm'
                                : 'اجمع اللازانيا. سخني الفرن إلى 350 درجة فهرنهايت. طبق خبز مستطيل سعة 2 لتر بالزيت أو الزبدة. يُغلى قدر كبير من الماء ويُملح بسخاء ويُضاف 3 أو 4 نودلز لازانيا ، فقط الرقم الذي تحتاجه لطبقة واحدة. يُطهى فقط حتى يصبح مرنًا ، وباستخدام ملقط أو مقشدة ، أخرجه من المقلاة وضعه على منشفة المطبخ حتى يتم تصريفه. تُسكب طبقة رقيقة من البشاميل والفطر فوق قاع الطبق. ضعي طبقة من المعكرونة فوقها. تُوزّع مغرفة من مزيج الفطر / البشاميل فوق النودلز ويُغطى بطبقة من جبن البارميزان. قم بطهي الطبقة التالية من المعكرونة واستمر في تكرار الطبقات (أحصل على ثلاث طبقات في مقالي) ، منتهيًا بطبقة من مزيج الفطر / البشاميل المغطاة بجبن البارميزان. غطي بورق القصدير وضعيه في الفرن. اخبز لمدة 30 دقيقة. قم بإزالة ورق القصدير ، وإذا كنت تريد أن تكون حواف النودلز مقرمشة وأعلى ذات لون بني فاتح ، استمر في الخبز مكشوفًا لمدة 5 إلى 10 دقائق أخرى. قدميها ساخنة أو دافئة',
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
