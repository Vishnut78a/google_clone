import 'package:flutter/cupertino.dart';
import 'package:google_clone/colors.dart';

class LanguageText extends StatelessWidget{
  String title;
  LanguageText({required this.title});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(title,style: TextStyle(color: blueColor),),
    );
  }
}