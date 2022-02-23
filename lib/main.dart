import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_explore_app/screens/homepage/homepage.dart';

// Created By Github Humanbeing-bit 22/02/2022

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
    );
  }
}
