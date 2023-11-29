import 'package:flutter/cupertino.dart';

class FooterText extends StatelessWidget{
  String title;
  FooterText({required this.title});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Text(title),
    );
  }
}