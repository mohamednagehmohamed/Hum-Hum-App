




import 'package:flare_flutter/asset_provider.dart';

import 'package:flutter/material.dart';

import 'package:rive/rive.dart';












class CustomSpinkit extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CustomSpinkitState();
  }
}

class CustomSpinkitState extends State<CustomSpinkit> {

  late AssetProvider? assetProvider;
  bool open=false;
   @override
  void initState() {
    super.initState();
   
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff313131),
     body:Container(
       width: double.infinity,
       height: double.infinity,
       decoration: BoxDecoration(
         color:Color(0xff313131),

       ),
       child: Stack(
         alignment: Alignment.center,
         children: [
           Positioned(child: Text('Loading..........',style: TextStyle(fontSize: 22,color: Colors.green),),left: MediaQuery.of(context).size.width/2-50,top: 100,),
           RiveAnimation.asset(
                        'images/1702-3370-instagram-2022.riv',fit: BoxFit.contain,
                      ),
         ],
       ),
     )
         /*RiveAnimation.asset(
                        'images/1702-3370-instagram-2022.riv',fit: BoxFit.contain,
                      ),*/
       
     );
     
     
       
        
        /*SpinKitChasingDots(
              duration: Duration(seconds: 2),
              color: Colors.orange,
              size: 80,
            ),*/
      
    
  }
}

