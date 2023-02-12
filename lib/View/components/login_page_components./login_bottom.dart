import 'package:e_share/authentication/login_model.dart';
import 'package:e_share/constant.dart';
import 'package:e_share/View/components/main_components/my_button.dart';
import 'package:e_share/View/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginBottom extends StatelessWidget {
  final TextEditingController loginEmailTextController,
      loginPasswordTextController;

  LoginBottom({
    required this.loginEmailTextController,
    required this.loginPasswordTextController,
  });

  final LoginModel _loginModel = LoginModel();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Get.toNamed(RegisterPage.id);
          },
          child: RichText(
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
          onTap: () {
            _loginModel.LoginUser(
              loginEmailTextController.text,
              loginPasswordTextController.text,
              context,
            );
          },
        ),
      ],
    );
  }
}
