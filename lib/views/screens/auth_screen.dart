import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nikeapp/Const/AppText.dart';
import 'package:nikeapp/views/screens/signup_detalis.dart';
import 'package:nikeapp/views/widgets/Authsceenwedget.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

final emailController = TextEditingController();
final _formKey = GlobalKey<FormState>();

void handleSubmit() {
  debugPrint('Button clicked!');
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            height: h,
            width: w,
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Form(key: _formKey,
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
                    Text(AuthscreenText.headtext, style: HeadTextstyle),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Text(AuthscreenText.india, style: Indiatextstyle),
                        SizedBox(width: 15.w),
                        Text(AuthscreenText.Change, style: Changetextstyle),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: AuthTextFormField(
                        label: 'Email*',
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your email";
                          } else if (!value.contains('@') || !value.contains('.')) {
                            return "Enter a valid email";
                          }
                          return null;
                        },

                      ),
                    ),
                    SizedBox(height: 40.h),
                    Text(AuthscreenText.bycontineu, style: Bycontinutextstyle),
                    SizedBox(height: 40.h),
                    ContinueButton(
                      text: 'Continue',
                      backgroundColor: Colors.black,
                      textColor: Colors.white,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print("Email: ${emailController.text}");
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignupDetalis()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar( backgroundColor: Colors.black,
                              content: Text('Please fix the errors above'),
                            ),
                          );
                        }
                      },


                    ),

                    SocialLoginSection(
                      onGoogleTap: () {
                        print('Google tapped');
                      },
                      onFacebookTap: () {
                        print('Facebook tapped');
                      },
                      onAppleTap: () {
                        print('Apple tapped');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
