import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_clone/responsive/widgets/web/search_tab.dart';

class Search_Tabs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    // TODO: implement build
    return Padding(
      padding:  EdgeInsets.only(left: size.width<=768?10:170),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
                      children: [Search_Tab(icon: CupertinoIcons.search, title: 'All',isActive: true,),
                                 Search_Tab(icon: Icons.ondemand_video, title: "Videos", isActive: false),
                                 Search_Tab(icon: CupertinoIcons.tag_fill, title: "Shopping", isActive:false),
                                 Search_Tab(icon: Icons.newspaper_sharp, title: "News", isActive:false),
                                 Search_Tab(icon: Icons.image_rounded, title: "Images", isActive: false),
                                 Search_Tab(icon: Icons.more_vert_rounded, title: "More", isActive: false)],),
      ),
    );
  }
}