import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';

class Search_Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final size=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Row(children: [
        Image.asset("asset/google-logo.png",height: size.height*0.06,),
        SizedBox(width: 50,),
        SizedBox(width: size.width*0.45,height: 45,
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
                                                      )],)),),)
      ],),
    );
  }
}