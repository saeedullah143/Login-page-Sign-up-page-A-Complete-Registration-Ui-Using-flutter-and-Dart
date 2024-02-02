import 'dart:async';
import 'package:flutter/material.dart';

import '../User Registration/Login Page.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    loadData();
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 2), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [Colors.indigo, Colors.tealAccent, Colors.lightBlueAccent],
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Image.asset("assets/speakle.png"),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "Welcome ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
