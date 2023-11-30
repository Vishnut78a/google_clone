
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../colors.dart';
import '../widgets/mobile/mobile_footer.dart';
import '../widgets/web/search.dart';
import '../widgets/web/search_button.dart';
import '../widgets/web/translation_Buttons.dart';
import '../widgets/web/webFooter.dart';

class MobilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(actions: [],
                                 elevation: 0,
                           backgroundColor: backgroundColor,),
        body: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Column(children: [Search(),
                                                            SizedBox(height: 20,),
                                                            Row(mainAxisAlignment: MainAxisAlignment.center,
                                                                        children: [SearchButton("Google Search", searchColor),
                                                                                  SizedBox(width: 10,),
                                                                                  SearchButton("I'm Feeling Lucky", searchColor)],),
                                                                                  TranslationButtons()],),
                                        Column(children: [Column(children: [Mobile_Footer()],)],)
                                      ],));
  }
}