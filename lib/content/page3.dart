import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:your_eyes/pages/made_by.dart';

class PageThree extends StatelessWidget {
  // const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Text(
                'Vision Skills',
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
                right: 30.0,
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset('assets/images/visionskills.png'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Blind & Low Vision Skills Training,',
                      style: TextStyle(
                        fontSize: 19,
                        fontFamily: 'OpenSans',
                        decoration: TextDecoration.none,
                        color: Colors.white,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Light House Team ',
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              color: Colors.indigo),
                        ),
                        TextSpan(
                          text:
                              'of teachers and specialists (many of whom are low vision/blind themselves) are highly trained in ',
                        ),
                        TextSpan(
                          text: 'Blind & Low Vision Skills Training.',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Colors.indigo,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 420,
            height: 210,
            padding: new EdgeInsets.only(
              bottom: 20.0,
              left: 20.0,
              right: 30.0,
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.grey,
              elevation: 5,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Training Includes:',
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
                      bottom: 5.0,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '- Immersion Training  \n- Changing Vision \n- Changing Life \n- Orientation and Mobility  \n- Essential Living Skills',
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
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.indigo, // background
              onPrimary: Colors.white, // foreground
            ),
            onPressed: _launchURL,
            child: Text('Learn more about Training'),
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
              )
            ],
          ),
          MadeBy(),
        ],
      ),
    );
  }

  _launchURL() async {
    const url = 'https://lighthouse-sf.org/programs/skills/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
