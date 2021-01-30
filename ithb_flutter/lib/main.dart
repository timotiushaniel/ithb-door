import 'package:flutter/material.dart';
import 'package:ithb_flutter/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "ITHB Door",
      theme: ThemeData.light(),
      home: WelcomePage(),
    );
  }
}