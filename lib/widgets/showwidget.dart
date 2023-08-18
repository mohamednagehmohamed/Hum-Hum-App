import 'package:flutter/cupertino.dart';
import 'package:mealapplication/homepage.dart';





class ShowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return CupertinoAlertDialog(
         title: Text(HomePageState.arabicvalue==false?'Tell us what you think of the meal?':'أخبرنا عن رأيك في الوجبه؟'),
         content: Column(
           children: [
             Image.asset('images/sad-crying.gif'),
             SizedBox(height: 2,),
             Text(HomePageState.arabicvalue==false?'Is the meal bad?':'هل الوجبه سيئه؟')
           ],
         ),
         actions: [
        CupertinoDialogAction(child:Text(HomePageState.arabicvalue==false?'Yes':'نعم'),onPressed: (){
          Navigator.of(context).pop();
        },),
         CupertinoDialogAction(child:Text(HomePageState.arabicvalue==false?'No':'لا'),onPressed: (){
          Navigator.of(context).pop();
        },),
         ],
     );
     
  }
}
