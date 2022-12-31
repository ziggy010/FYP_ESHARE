import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/components/main_components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBottom extends StatelessWidget {
  const LoginBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            text: 'Don\'t have an account? ',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'poppins',
              fontSize: 12.sp,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Register',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'poppins',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        MyButton(
          height: 57.h,
          width: 292.w,
          buttonColor: kSelectedColor,
          borderRadius: 14,
          textWidget: Text(
            'Sign in',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'poppins',
              fontSize: 16.sp,
            ),
          ),
        ),
      ],
    );
  }
}
