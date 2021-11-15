import 'home.dart';
import '../main.dart';

import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class MySplash extends StatefulWidget {
  @override
  _MySplashState createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      image: Image.asset('assets/images/visionskills.png'),
      navigateAfterSeconds: new HomePage(cameras),
      backgroundColor: Colors.teal[200],
      photoSize: 150,
      loaderColor: Colors.white,
      loadingText: Text(
        'Loading...\n\n Made with ❤️ by Jatin & Swapnil',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15.0,
          color: Colors.black,
        ),
      ),
    );
  }
}
