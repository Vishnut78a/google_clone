import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';

class Search_Tab extends StatelessWidget{
  IconData icon;
  String title;
  bool isActive;
  Search_Tab({required this.icon,required this.title,required this.isActive});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(left:20.0),
      child: Column(
        children: [Row(children: [Icon(icon,color: isActive?blueColor:Colors.grey,),
                                  Text(title,style: TextStyle(color:isActive?blueColor:Colors.grey),)],),
                    SizedBox(height: 10,),
                    isActive?Container(height: 3,width: 40,color: blueColor,)
                            :Container()]),
    );
  }
}