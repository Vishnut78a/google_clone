import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';

class Search_Footer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final size=MediaQuery.of(context).size;
    return Column(
      children: [
        Container(color: footerColor,
          padding: EdgeInsets.symmetric(horizontal:size.width<=768?10: 150,vertical: 15),
          child: Row(children: [
            Text("India"),
            SizedBox(width: 5,),
            Container(height: 25,width: 2,color: Colors.grey,),
            SizedBox(width: 10),
            Icon(Icons.circle,color: Color(0xff70757A),size: 15,),
            SizedBox(width: 5,),
            Text("401105, Mumbai, Maharashtra")
          ],),
        ),
        Divider(height: 5,thickness: 6,),
        Container(color: footerColor,
          padding: EdgeInsets.symmetric(horizontal:size.width<=768?10: 150,vertical: 15),
          child: Row(children: [
            Text("Help",style: TextStyle(color: Colors.grey.shade700)),
            SizedBox(width: 10,),
            Text("Send Feedback",style: TextStyle(color: Colors.grey.shade700)),
            SizedBox(width: 10,),
            Text("Privacy",style: TextStyle(color: Colors.grey.shade700)),
            SizedBox(width: 10,),
            Text("Terms",style: TextStyle(color: Colors.grey.shade700),)
          ],),
        ),
      ],
    );
  }
}