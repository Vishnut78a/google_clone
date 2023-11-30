import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FooterText extends StatelessWidget{
  String title;
  FooterText({required this.title});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: TextButton(onPressed: () {},
                            child: Text(title,style: const TextStyle(color: Color(0xff70757a)),),),
    );
  }
}