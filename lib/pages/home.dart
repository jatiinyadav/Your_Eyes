import 'dart:math' as math;
import 'dart:async';

import 'package:flutter_tts/flutter_tts.dart';
import 'package:telephony/telephony.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:tflite/tflite.dart';
import '../label/labelbox.dart';
import '../label/camera.dart';

class HomePage extends StatefulWidget {
  final List<CameraDescription> cameras;

  HomePage(this.cameras);

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<dynamic> _recognitions;
  int _imageHeight = 0;
  int _imageWidth = 0;
  String _model = "SSD MobileNet";
  final FlutterTts flutterTts = FlutterTts();
  final Telephony telephony = Telephony.instance;

  PageController _controller = PageController(
    initialPage: 0,
  );

  var sosCount = 0;
  var initTime;

  @override
  Future<void> initState() {
    super.initState();
    loadModel();
    return null;
  }

  loadModel() async {
    String res = await Tflite.loadModel(
        model: "assets/Model.tflite", labels: "assets/Model.txt");
    print("MODEL" + res);
  }

  setRecognitions(recognitions, imageHeight, imageWidth) {
    setState(() {
      _recognitions = recognitions;
      _imageHeight = imageHeight;
      _imageWidth = imageWidth;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          Container(
            child: Stack(
              children: [
                Camera(
                  widget.cameras,
                  _model,
                  setRecognitions,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 60.0, 10.0, 10.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent, // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Go Back'),
                  ),
                ),
                LabelBox(
                    _recognitions == null ? [] : _recognitions,
                    math.max(_imageHeight, _imageWidth),
                    math.min(_imageHeight, _imageWidth),
                    screen.height,
                    screen.width,
                    _model),
              ],
            ),
          ),
        ],
        scrollDirection: Axis.horizontal,
        pageSnapping: true,
        physics: BouncingScrollPhysics(),
      ),
    );
  }
}
