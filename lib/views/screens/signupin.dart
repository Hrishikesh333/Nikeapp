import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nikeapp/views/screens/signin_view.dart';
import '../../Const/AppText.dart';

class Signupin extends StatefulWidget {
  const Signupin({super.key});

  @override
  State<Signupin> createState() => _SignupinState();
}

class _SignupinState extends State<Signupin> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SigninView()),
          );
        },
        child: Container(
          height: h,
          width: w,
          color: const Color(0xFF10001E),
          child: Padding(
            padding: EdgeInsets.only(left: 40.w, right: 20.w, top: 200.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image(
                      image: const AssetImage('images/nikelogowhite.png'),
                      width: w * 0.15,
                      height: h * 0.15,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  SignininText.nametext,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  SignininText.welcome,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: h * 0.02),
                Text(
                  SignininText.thanks,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: h * 0.3),
                Text(
                  SignininText.since,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
