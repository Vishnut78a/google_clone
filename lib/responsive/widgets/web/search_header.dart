import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/screeens/search_Screen.dart';

class Search_Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final size=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.only(top:18.0),
          child: Image.asset("asset/google-logo.png",width:size.width<768?size.width*0.2: size.width*0.1,),
        ),
        SizedBox(width: size.width*0.08,),
        Padding(
          padding: const EdgeInsets.only(top:18.0),
          child: SizedBox(width: size.width*0.45,height: 45,
            child: TextFormField(
              decoration: InputDecoration(border:OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                                          suffixIcon: Row(mainAxisAlignment: MainAxisAlignment.end,
                                                          mainAxisSize: MainAxisSize.min,
                                                        children: [
                                                          Padding(
                                                          padding: const EdgeInsets.all(1.0),
                                                          child: SvgPicture.asset("asset/mic-icon.svg"),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: SvgPicture.asset("asset/search-icon.svg",color: blueColor,),
                                                        )],)),),),
        )
      ],),
    );
  }
}