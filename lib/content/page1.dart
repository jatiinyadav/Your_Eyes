import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[300],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                'Your Eyes',
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
                    child: Image.asset('assets/launch_image.png'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Our Application aims to bridge the gap between them and the visual world by',
                      style: TextStyle(
                        fontSize: 19,
                        fontFamily: 'OpenSans',
                        decoration: TextDecoration.none,
                        color: Colors.white,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Deep Learning and lucid UI ',
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              color: Colors.black),
                        ),
                        TextSpan(
                          text:
                              'accessible on low-ended devices that would allow them to better understand the world around.',
                        ),
                      ],
                    ),
                  )
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
                'Features of our Application :',
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
                '- Feature 1 \n- Feature 2 \n- Feature 3 \n- Feature 4 \n- Feature 5',
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
              primary: Colors.blueAccent, // background
              onPrimary: Colors.white, // foreground
            ),
            onPressed: () {},
            child: Text('Start Our Application'),
          ),
          Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              'Made with ❤️ by Swapnil & Jatin',
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
