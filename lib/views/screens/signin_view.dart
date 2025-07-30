import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Const/AppText.dart';
import '../widgets/Signinviewwedget.dart';

class SigninView extends StatefulWidget {
  const SigninView({super.key});

  @override
  State<SigninView> createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
  final TextEditingController emailController = TextEditingController();
  bool isEmailValid = false;

  void validateEmail(String email) {
    setState(() {
      isEmailValid = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(email);
    });
  }
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          height: h,
          width: w,
          child: Padding(
            padding: EdgeInsets.only(left: 20.w, top: 20.h, right: 20.w),
            child: SingleChildScrollView(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image(
                        image: AssetImage('images/nikeicononly.webp'),
                        width: w * 0.15,
                        height: h * 0.15,
                      ),
                      SizedBox(width: 20.w),
                      Image(
                        image: AssetImage('images/joedanicon.png'),
                        width: w * 0.15,
                        height: h * 0.15,
                      ),
                    ],
                  ),
                  Text(SigninviewText.headtext, style: Headertextstyle),
                  Text(SigninviewText.subheadtext, style: Subheadertextstyle),
                  SizedBox(height: 50),
                  EmailInputField(
                    controller: emailController,
                    isValid: isEmailValid,
                    onChanged: validateEmail,
                  ),SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: isEmailValid ? () {
                      // Proceed with valid email
                    } : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF15002E), // deep purple
                      disabledBackgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: const Size.fromHeight(50),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(color: Colors.white),
                    ),
                  ), SocialLoginSection(
                    onGoogleTap: () {
                      print('Google tapped');
                    },
                    onFacebookTap: () {
                      print('Facebook tapped');
                    },
                    onAppleTap: () {
                      print('Apple tapped');
                    },
                  ),SizedBox(height: 40.h,),Text(SigninviewText.endtext, style: Endtextstyle)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
