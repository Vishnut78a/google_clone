import 'package:flutter/cupertino.dart';
import 'package:google_clone/responsive/widgets/web/footerText.dart';

class WebFooter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all( 15.0),
      child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Row(children: [FooterText(title: "About"),
                                           FooterText(title: "Advertising"),
                                           FooterText(title: "Business"),
                                           FooterText(title: "How Search works")
                                          ],),
                           Row(children: [FooterText(title: "Privacy"),
                                          FooterText(title: "Terms"),
                                         FooterText(title: "Settings")],)],),
    );
  }
}