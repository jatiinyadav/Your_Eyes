import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:your_eyes/content/page1.dart';
import 'package:your_eyes/content/page2.dart';
import 'package:your_eyes/content/page3.dart';

class LiquidSwipeHome extends StatelessWidget {
  // const LiquidSwipeHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LiquidSwipe(
      pages: [
        PageOne(),
        PageTwo(),
        PageThree(),
      ],
      enableSideReveal: true,
      positionSlideIcon: 0.5,
      slideIconWidget: Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
      ),
      waveType: WaveType.liquidReveal,
    );
  }
}
