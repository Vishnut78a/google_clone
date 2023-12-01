
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../screeens/search_Screen.dart';

class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final size = MediaQuery.of(context).size;
    return Column(children: [ Center(child: Image.asset("asset/google-logo.png",height: size.height*0.15,)),
      const SizedBox(height: 20),
      SizedBox(width: size.width>=768?size.width*0.5:size.width*0.8,
               child: TextFormField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                                    prefixIcon: Icon(CupertinoIcons.search),
                                    suffixIcon: Padding(padding: const EdgeInsets.all(8.0),
                                                          child: SvgPicture.asset("asset/mic-icon.svg",),
                                    ),),
                                    onFieldSubmitted:(query){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                         Search_Screen(start: '0', searchQuery: query)));
    },),),],);
  }
}