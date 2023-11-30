import 'package:flutter/cupertino.dart';

import '../web/footerText.dart';

class Mobile_Footer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Wrap(children: [
        FooterText(title: "About"),
        FooterText(title: "Advertising"),
        FooterText(title: "Business"),
        FooterText(title: "How Search works"),
        FooterText(title: "Privacy"),
        FooterText(title: "Terms"),
        FooterText(title: "Settings")
      ],),
    );
  }
}