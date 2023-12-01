import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/screeens/search_Screen.dart';

class PaginationButtons extends StatelessWidget{
  String title;
  PaginationButtons({required this.title});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextButton(onPressed: (){
   }, child: Text(title,style: TextStyle(color: blueColor),));
  }
}