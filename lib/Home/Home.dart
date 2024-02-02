import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home", style: TextStyle(color: Colors.blue,fontSize: 60,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
