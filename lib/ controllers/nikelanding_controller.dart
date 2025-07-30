import 'package:flutter/material.dart';
import 'package:nikeapp/views/screens/signupin.dart';

class SplashController {
  void startDelay(BuildContext context) {
    Future.delayed( Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  Signupin()),
      );
    });
  }
}
