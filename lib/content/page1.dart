import 'package:flutter/material.dart';
import 'package:your_eyes/pages/made_by.dart';
import 'package:your_eyes/pages/splashscreen.dart';

class PageOne extends StatelessWidget {
  // const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(23, 24, 31, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30.0),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 30.0),
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
          SizedBox(height: 10.0),
          Container(
            child: Padding(
              padding: EdgeInsets.only(
                top: 20.0,
                bottom: 5.0,
                left: 20.0,
                right: 30.0,
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset('assets/images/your_eyes.png'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text.rich(
                    TextSpan(
                      text:
                          'Our Application aims to bridge the gap between normal and',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'OpenSans',
                        decoration: TextDecoration.none,
                        color: Colors.white,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Visually Impaired ',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Color.fromRGBO(203, 105, 193, 1),
                          ),
                        ),
                        TextSpan(
                          text:
                              'using',
                        ),
                        TextSpan(
                          text: ' Machine Learning & Artificial Intelligence ',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Color.fromRGBO(203, 105, 193, 1),
                          ),
                        ),
                        TextSpan(
                          text:
                              'help them to better understand the world around them for easier life.',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Spacer(),
          Column(
            children: [
              Container(
                padding: new EdgeInsets.only(
                  bottom: 10.0,
                  left: 20.0,
                  right: 30.0,
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Color.fromRGBO(108, 114, 203, 1),
                  elevation: 5,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Features of our Application :',
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
                      Padding(
                        padding: EdgeInsets.only(
                          top: 5.0,
                          left: 20.0,
                          right: 5.0,
                          bottom: 10.0,
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '- Helpful for Visually Impaired \n- Peaceful to identify objects \n- Pronounce the visible objects \n- Easy to use  \n- Interactive User Interface',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'OpenSans',
                              decoration: TextDecoration.none,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(203, 105, 193, 1), // background
              onPrimary: Colors.white, // foreground
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MySplash(),
                ),
              );
            },
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
          MadeBy()
        ],
      ),
    );
  }
}
