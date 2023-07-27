import 'package:flutter/material.dart';
import 'package:ebooksapp/screens/login/login.dart';
import 'package:ebooksapp/utils/ourtheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: OurTheme.buildTheme(),
      home: Login(),
    );
  }
}
