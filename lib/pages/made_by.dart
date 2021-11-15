import 'package:flutter/material.dart';

class MadeBy extends StatelessWidget {
  // const MadeBy({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10.0,
        bottom: 10.0,
      ),
      child: Text(
        'Made with ❤️ by Swapnil & Jatin',
        style: TextStyle(
          fontSize: 15,
          fontFamily: 'OpenSans',
          decoration: TextDecoration.none,
          color: Colors.white,
        ),
      ),
    );
  }
}
