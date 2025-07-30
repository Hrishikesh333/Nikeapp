import 'package:flutter/material.dart';
import '../../ controllers/landing_controller.dart';

import '../widgets/action_buttons.dart';


class LandingView extends StatelessWidget {
   LandingView({super.key});

  final LandingController _controller =  LandingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration:  BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/Nikelandingimg.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.4),
          ),
          Padding(
            padding:  EdgeInsets.only(bottom: 70,left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Image(
                  image: AssetImage('images/nikelogowhite.png'),
                  width: 50,
                ),
                 SizedBox(height: 20),
                 Text(
                  "Bringing Nike Members the best products, inspiration and stories in sport.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    height: 1.4,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                 SizedBox(height: 18),

                // Action Buttons
                ActionButtons(controller: LandingController()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
