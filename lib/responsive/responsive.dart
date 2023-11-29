

import 'package:flutter/cupertino.dart';

class Responsive extends StatelessWidget{
  final Widget mobileScreen;
  final Widget webScreen;
   const Responsive({Key? key,required this.mobileScreen,required this.webScreen}):super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth<=768){
        return mobileScreen;
      }
      else{
        return webScreen;
      }
    });
  }
}