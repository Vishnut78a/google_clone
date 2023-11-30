import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/responsive/widgets/web/search.dart';
import 'package:google_clone/responsive/widgets/web/search_button.dart';
import 'package:google_clone/responsive/widgets/web/webFooter.dart';

import '../widgets/web/translation_Buttons.dart';

class WebPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(actions: [TextButton(onPressed: (){}, child: Text("Gmail",style: TextStyle(color: primaryColor,fontWeight: FontWeight.w400),),),
                              TextButton(onPressed: (){}, child: Text("Images",style: TextStyle(color: primaryColor,fontWeight: FontWeight.w400),)),
                              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.circle_grid_3x3_fill),),
                               Padding(
                                 padding: const EdgeInsets.only(top: 10,bottom: 10,right: 15,left: 10),
                                 child: MaterialButton(onPressed: (){},child: Text("Sign in"),color: const Color(0xff1A73EB),),
                               )],
                    elevation: 0,
                    backgroundColor: backgroundColor,),
     body: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Column(
           children: [
                 Search(),
                 SizedBox(height: 20,),
                 Row(mainAxisAlignment: MainAxisAlignment.center,
                   children: [SearchButton("Google Search", searchColor),
                                SizedBox(width: 10,),
                              SearchButton("I'm Feeling Lucky", searchColor)],),
                              TranslationButtons()
                  ],),
         Column(children: [
           Column(children: [
             WebFooter()],)
         ],)
       ],
     ));
  }
}