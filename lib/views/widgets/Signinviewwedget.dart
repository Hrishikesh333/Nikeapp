import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailInputField extends StatelessWidget {
  final TextEditingController controller;
  final bool isValid;
  final Function(String)? onChanged;

  const EmailInputField({
    super.key,
    required this.controller,
    this.isValid = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Row(
        children: [
          const Icon(Icons.email_outlined, color: Colors.black87),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              controller: controller,
              onChanged: onChanged,
              decoration: const InputDecoration(
                hintText: 'Email',
                border: InputBorder.none,
              ),
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 16,
              ),
            ),
          ),
          if (isValid)
            const Icon(Icons.check_circle, color: Colors.green),
        ],
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
    this.orText = 'or continue with',
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
              child: Text('or continue with',style: TextStyle(color: Colors.grey),),
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