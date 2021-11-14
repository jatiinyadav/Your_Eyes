import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                'Braille Code',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'OpenSans',
                  decoration: TextDecoration.none,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(
                top: 20.0,
                bottom: 20.0,
                left: 20.0,
                right: 25.0,
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset('assets/Braille.png'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Braille Code is a tactile code enabling blind and visually impaired people to read and write by touch, with various combinations of raised dots representing the alphabet, words, punctuation and numbers.',
                    style: TextStyle(
                      fontSize: 19,
                      fontFamily: 'OpenSans',
                      decoration: TextDecoration.none,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.0,
              bottom: 20.0,
              left: 20.0,
              right: 25.0,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Braille Code Includes:',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'OpenSans',
                  decoration: TextDecoration.none,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 20.0,
              left: 30.0,
              right: 25.0,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '- Eight-dot braille \n- Letters \n- Formatting \n- Punctuation \n- Contractions',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'OpenSans',
                  decoration: TextDecoration.none,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green, // background
              onPrimary: Colors.white, // foreground
            ),
            onPressed: () {},
            child: Text('Read More on Braille Code'),
          ),
          Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10.0,
                height: 10.0,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 15.0,
                height: 15.0,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 10.0,
                height: 10.0,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
            ),
            child: Text(
              'Build with ❤️ by Swapnil & Jatin',
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'OpenSans',
                decoration: TextDecoration.none,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
