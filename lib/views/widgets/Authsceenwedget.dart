import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthTextFormField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool isPassword;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const AuthTextFormField({
    super.key,
    required this.label,
    required this.controller,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      keyboardType: keyboardType,
      validator: validator,
      style: TextStyle(fontSize: 14.sp),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(fontSize: 14.sp, color: Colors.grey[700]),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 12.w),
      ),
    );
  }
}
class ContinueButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;
  final double borderRadius;

  const ContinueButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height,
    this.backgroundColor,
    this.textColor,
    this.borderRadius = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding:  EdgeInsets.only(right: 20.w),
        child: Row(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
                foregroundColor: textColor ?? Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ), child: Text(text),
            ),
          ],
        ),
      ),
    );
  }
}
class SocialLoginSection extends StatelessWidget {
  final VoidCallback onGoogleTap;
  final VoidCallback onFacebookTap;
  final VoidCallback onAppleTap;
  final String orText;

  const SocialLoginSection({
    super.key,
    required this.onGoogleTap,
    required this.onFacebookTap,
    required this.onAppleTap,
    this.orText = 'or',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(height: 100.h,),
            Expanded(
              child: Divider(
                thickness: 1,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text('or'),
            ),
            Expanded(
              child: Padding(
                padding:  EdgeInsets.only(right: 20),
                child: Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 30.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildSocialButton(
              onTap: onGoogleTap,
              icon: Image.asset('images/googleicon.webp', height: 30.h),
            ),
            _buildSocialButton(
              onTap: onFacebookTap,
              icon: Image.asset('images/facebooicon.png', height: 40.h),
            ),
            _buildSocialButton(
              onTap: onAppleTap,
              icon: Image.asset('images/appleiocn.png', height: 24.h),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSocialButton({required VoidCallback onTap, required Widget icon}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60.w,
        height: 50.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        alignment: Alignment.center,
        child: icon,
      ),
    );
  }
}
