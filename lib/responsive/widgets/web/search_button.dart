import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget{
  String title;
  Color color;
  SearchButton(this.title,this.color);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialButton(onPressed: (){},
                              color: color,
                               elevation: 0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                           padding: const EdgeInsets.all(20),
                              child: Text(title),);
  }
}