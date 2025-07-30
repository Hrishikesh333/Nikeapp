import 'package:flutter/material.dart';
import '../views/screens/HomeView.dart';
import '../views/screens/landing_view.dart';

class SplashController {
  const SplashController();

  void startDelay(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) =>  LandingView()),
      );
    });
  }
}
