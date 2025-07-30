import 'package:flutter/material.dart';

import '../../ controllers/splash_controller.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  final SplashController _controller = const SplashController();

  @override
  void initState() {
    super.initState();
    _controller.startDelay(context);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF10001E),
      body: Center(
        child: SplashLogo(),
      ),
    );
  }
}

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 60,
          height: 60,
        ),
        Container(
          decoration:  BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/Nikelodo.png'),
              fit: BoxFit.cover,
            ),
          ),
        )

      ],
    );
  }
}
