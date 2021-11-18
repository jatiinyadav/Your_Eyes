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
      image: Image.asset('assets/images/volunteering.png'),
      navigateAfterSeconds: new HomePage(cameras),
      backgroundColor: Color.fromRGBO(108, 114, 203, 1),
      photoSize: 180,
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
