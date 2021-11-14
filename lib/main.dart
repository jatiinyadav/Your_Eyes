// import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:miniproject_youreyes/pages/home.dart';
import 'package:miniproject_youreyes/pages/liquidswipe.dart';

// import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'OpenSans',
      ),
      // home: SplashScreenPage(),
      // home: HomeScreen(),
      home: LiquidSwipeHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
