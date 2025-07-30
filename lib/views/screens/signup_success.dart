import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Const/AppText.dart';
import '../widgets/Signupsuccesswidget.dart' ;
import 'Nike_landing.dart';

class SignupSuccess extends StatefulWidget {
  const SignupSuccess({super.key});

  @override
  State<SignupSuccess> createState() => _SignupSuccessState();
}

class _SignupSuccessState extends State<SignupSuccess> {
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
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Text(
                  SignupsuccessText.headtext,
                  style: TextStyle(fontSize: 30),
                ),
                ContinueButton(
                  text: 'Continue',
                  backgroundColor: Colors.black,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NikeLanding()),
                        );
                    // if (_formKey.currentState!.validate()) {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => SignupSuccess()),
                    //   );
                    // } else {
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     const SnackBar( backgroundColor: Colors.black,
                    //       content: Text('Please fix the errors above'),
                    //     ),
                    //   );
                    // }
                  },


                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
