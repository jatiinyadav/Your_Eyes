import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Eyes")),
      body: Center(
        child: Text(
          "Welcome to Home Page",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
    );
  }
}