import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../responsive/widgets/web/search_header.dart';

class Search_Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(children: [
          Search_Header(),
          Search_Tabs()
        ],),
      )
    );
  }
}