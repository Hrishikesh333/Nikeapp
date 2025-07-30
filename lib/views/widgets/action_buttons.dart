import 'package:flutter/material.dart';
import 'package:nikeapp/%20controllers/auth_controller.dart';
import 'package:nikeapp/views/screens/auth_screen.dart';
import '../../ controllers/landing_controller.dart';

class ActionButtons extends StatelessWidget {
  final LandingController controller;
  final AuthController authController = AuthController();

   ActionButtons({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return AuthScreen();
            },));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          child: const Text('Sign up'),
        ),
        const SizedBox(width: 12),

        OutlinedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return AuthScreen();
            },));
          },
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.white),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          child: const Text('Sign in'),
        ),
      ],
    );
  }
}
