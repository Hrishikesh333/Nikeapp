import 'package:flutter/material.dart';
import '../../ controllers/nikelanding_controller.dart';

class NikeLanding extends StatefulWidget {
  const NikeLanding({super.key});

  @override
  State<NikeLanding> createState() => _NikeLandingState();
}

class _NikeLandingState extends State<NikeLanding> {
  final SplashController _controller = SplashController();

  @override
  void initState() {
    super.initState();
    _controller.startDelay(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF10001E),
      body: const Center(
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
