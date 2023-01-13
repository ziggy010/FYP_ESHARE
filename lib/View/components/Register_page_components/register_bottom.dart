import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/components/main_components/my_button.dart';
import 'package:e_share/View/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

class RegisterBottom extends StatelessWidget {
  const RegisterBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Get.toNamed(LoginPage.id);
          },
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Don\'t have an account? ',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'poppins',
                    fontSize: 12.sp,
                  ),
                ),
                TextSpan(
                  text: 'Login',
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
        ),
        SizedBox(
          height: 15.h,
        ),
        MyButton(
          height: 57.h,
          width: double.infinity,
          buttonColor: kSelectedColor,
          borderRadius: 16,
          textWidget: Text(
            'Register',
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
