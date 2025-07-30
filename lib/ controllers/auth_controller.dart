

import 'package:flutter/material.dart';
import '../views/screens/auth_screen.dart';

class AuthController {
  void onSignUpTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) =>  AuthScreen()),
    );

    void onSignInTap(BuildContext context) {
      // Similar navigation to SignInScreen
    }
  }
}
