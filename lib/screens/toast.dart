//import 'dart:async';
//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:mealapplication/homepage.dart';
import 'package:mealapplication/modules/floatingbutton.dart';


//void main() => runApp(ToastPage());

class ToastPage extends StatefulWidget {
  @override
  ToastPageState createState() => ToastPageState();
}

class ToastPageState extends State<ToastPage> {
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
            HomePageState.arabicvalue==false?
            'Toast Hawaii':'توست هاواي',
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
              InteractiveViewer(child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset('images/toast.jpg',width: double.infinity,fit: BoxFit.cover,))),
              SizedBox(
                height: 8,
              ),
              Center(
                child: Text(
                  HomePageState.arabicvalue == false ? 'Ingredients' : 'مكونات',
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
                            HomePageState.arabicvalue == false ? '1 Slice White Bread' : '1 شريحة خبز أبيض',
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
                            HomePageState.arabicvalue == false ? '1 Slice Ham' : '1 شريحة لحم',
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
                           HomePageState.arabicvalue == false ? '1 Slice Pineapple' : '1 شريحة أناناس',
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
                            HomePageState.arabicvalue == false ? '1-2 Slices of Cheese' : '1-2 شرائح جبن',
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
                            HomePageState.arabicvalue == false ? 'Butter' : 'سمنة',
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
                            HomePageState.arabicvalue == false ? 'Butter one side of the white bread' : 'زبدة جانب واحد من الخبز الأبيض',
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
                            HomePageState.arabicvalue == false ? 'Layer ham, the pineapple and cheese on the white bread' : 'ضعي طبقة من لحم الخنزير والأناناس والجبن على الخبز الأبيض',
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
                            HomePageState.arabicvalue == false ? 'Bake the toast for round about 10 minutes in the oven at 200°C' : 'اخبزي التوست لمدة 10 دقائق تقريبًا في الفرن على حرارة 200 درجة مئوية',
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
            ])
        ),
      ),
    );
  }
}
 