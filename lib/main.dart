import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/screens/Home_Screen.dart';

void main (){
  runApp(TokuApp()) ;
}

class TokuApp extends StatelessWidget {
  const TokuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}



