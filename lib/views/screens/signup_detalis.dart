import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nikeapp/views/screens/signup_success.dart';

import '../../Const/AppText.dart';
import '../widgets/signupdetilaswidget.dart';

class SignupDetalis extends StatefulWidget {
  const SignupDetalis({super.key});

  @override
  State<SignupDetalis> createState() => _SignupDetalisState();
}

final codeController = TextEditingController();
final firstNameController = TextEditingController();
final surnameController = TextEditingController();
final passwordController = TextEditingController();
final dayController = TextEditingController();
final monthController = TextEditingController();
final yearController = TextEditingController();
final _formKey = GlobalKey<FormState>();

class _SignupDetalisState extends State<SignupDetalis> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            height: h,
            width: w,
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
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
                    SizedBox(height: 10.h),
                    Text(SignupdetialsText.headtext, style: HeadTextstyle),
                    SizedBox(height: 20.h),
                    Text(SignupdetialsText.subheadtext, style: Subheadtexstyle),
                    Row(
                      children: [
                        Text(SignupdetialsText.emailtext, style: Emailtextstyle),
                        SizedBox(width: 30.w),
                        Text(SignupdetialsText.edittext, style: Edittextstyle),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SignupFormField(
                          label: 'Code*',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter the code";
                            } else if (value.length != 6) {
                              return "Enter a valid code";
                            } else {
                              return null;
                            }
                          },
                          controller: codeController,
                          keyboardType: TextInputType.number,
                          suffixIcon: Icon(Icons.refresh),
                        ),Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              SignupdetialsText.resenttext,
                              style: TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),

                        Row(
                          children: [
                            Expanded(
                              child: SignupFormField(
                                label: 'First Name*',
                                controller: firstNameController,
                                keyboardType: TextInputType.name,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Enter your first name';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: SignupFormField(
                                label: 'Surname*',
                                controller: surnameController,
                                keyboardType: TextInputType.name,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Enter your surname';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),


                        SizedBox(height: 20),
                        SignupFormField(
                          label: "password",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter a password";
                            } else if (value.length < 8) {
                              return "Password must be at least 8 characters long";
                            }
                          },
                          controller: passwordController,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          suffixIcon: Icon(
                            Icons.visibility_off,
                          ), // For toggling password visibility
                        ),

                        SizedBox(height: 5),
                        Text(
                          SignupdetialsText.passwordHint1,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Text(
                          SignupdetialsText.passwordHint2,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),

                        SizedBox(height: 30),
                        Text(
                          SignupdetialsText.dob,
                          style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20.sp),
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Expanded(
                              child: SignupFormField(
                                validator: (value){
                                  if(value==null || value.isEmpty){
                                    return "Please enter a day";
                                  }else if(int.tryParse(value)==null){
                                    return "Please enter a valid day";
                                  }
                                  return null;
                                },
                                label: "day",
                                controller: dayController,
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: SignupFormField(
                                validator: (value){
                                  if(value==null || value.isEmpty){
                                    return "Please enter a month";
                                  }else if(int.tryParse(value)==null){
                                    return "Please enter a valid month";
                                  }
                                  return null;
                                },
                                label: "month",
                                controller: monthController,
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: SignupFormField(
                                validator: (value){
                                  if(value==null || value.isEmpty){
                                    return "Please enter a year";
                                  }else if(int.tryParse(value)==null){
                                    return "Please enter a valid year";
                                  }
                                  return null;
                                },
                                label: "year",
                                controller: yearController,
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          SignupdetialsText.birthdayReward,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ), ContinueButton(
                      text: 'Continue',
                      backgroundColor: Colors.black,
                      textColor: Colors.white,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignupSuccess()),
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
