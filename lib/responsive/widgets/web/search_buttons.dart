import 'package:flutter/cupertino.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/responsive/widgets/web/search_button.dart';

class SearchButtons extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(children: [SearchButton("Google Search",searchColor),
                          SearchButton("I'm Feeling Lucky",searchColor)],);
  }
}