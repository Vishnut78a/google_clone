import 'package:flutter/material.dart';
import 'package:google_clone/responsive/mobilePage/mobilePage.dart';
import 'package:google_clone/responsive/responsive.dart';
import 'package:google_clone/responsive/webPage/webPage.dart';
import 'package:google_clone/screeens/search_Screen.dart';

import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor:  backgroundColor
      ),
      debugShowCheckedModeBanner: false,
      home: Responsive(mobileScreen: MobilePage(), webScreen: WebPage())
    );
  }
}
