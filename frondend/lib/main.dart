
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'package:flutter/rendering.dart';
import 'dart:developer';
import 'dart:ui';
import 'package:rksi_app/addaptive.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {

  debugPaintSizeEnabled = false;
  runApp(MyApp());

}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Расписание',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // textTheme: TextTheme(
        //   caption: TextStyle(fontSize: (width + height) / 2 * .011, color: Colors.white),
        //   bodyText1: TextStyle(fontSize: (width + height) / 2 * .007, color: Colors.redAccent),
        // ),
          fontFamily: 'Georgia',
      ),
      home: HomePage(),

    );
  }
}
