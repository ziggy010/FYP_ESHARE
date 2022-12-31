import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginTop extends StatelessWidget {
  const LoginTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Let\'s sign you in',
          style: TextStyle(
            fontFamily: 'poppins',
            fontSize: 30.sp,
            fontWeight: FontWeight.w600,
            letterSpacing: 3,
            color: Colors.white,
          ),
        ),
        Text(
          'Welcome Back',
          style: TextStyle(
            fontFamily: 'poppinsLight',
            fontSize: 24.sp,
            letterSpacing: 4,
            color: Colors.white,
          ),
        ),
        Text(
          'You\'ve been missed!',
          style: TextStyle(
            fontFamily: 'poppinsLight',
            fontSize: 24.sp,
            letterSpacing: 4,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
