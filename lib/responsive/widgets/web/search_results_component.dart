
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Search_Results_Components extends StatefulWidget{

  String text;
  String link;
  String desc;
  String linkToGo;
  Search_Results_Components({required this.link,required this.linkToGo,required this.text,
                             required this.desc});

  @override
  State<Search_Results_Components> createState() => _Search_Results_ComponentsState();
}

class _Search_Results_ComponentsState extends State<Search_Results_Components> {
  bool underline = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(bottom: 28.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () async {
              if(await canLaunchUrlString(widget.linkToGo)){
                log(1.toString());
                await launchUrlString(widget.linkToGo);
                log(2.toString());
              }
            },
            onHover: (hovering){
              setState(() {
                underline=hovering;
                print(underline);log(underline.toString());
              });
            },
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.link,style: const TextStyle(fontSize: 14,color: primaryColor),),
                Text(widget.text,style: TextStyle(color:blueColor,
                                               fontSize: 21,
                                            decoration:underline ? TextDecoration.underline:TextDecoration.none ),),
              ],
            ),
          ),

          Text(widget.desc),],),
    );
  }
}
