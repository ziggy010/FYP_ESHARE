import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_share/View/components/main_components/my_snackbar.dart';
import 'package:e_share/constant.dart';
import 'package:e_share/View/components/main_components/my_button.dart';
import 'package:e_share/View/fill_details_page.dart';
import 'package:e_share/View/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class RegisterBottom extends StatelessWidget {
  final TextEditingController registerEmailController;
  final TextEditingController registerPasswordController;
  final TextEditingController registerConfirmPasswordController;

  RegisterBottom({
    required this.registerEmailController,
    required this.registerConfirmPasswordController,
    required this.registerPasswordController,
  });

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
          onTap: () {
            if (registerPasswordController.text.length > 6) {
              if (registerPasswordController.text ==
                  registerConfirmPasswordController.text) {
                Get.toNamed(
                  FillDetailsPage.id,
                  arguments: [
                    registerEmailController.text,
                    registerPasswordController.text,
                    registerConfirmPasswordController.text,
                  ],
                );
              } else {
                MySnackbar.showSnackBar(
                  context,
                  'Password doesn\'t match.',
                  'Password and confirm password doesn\'t match.',
                  ContentType.failure,
                );
              }
            } else {
              MySnackbar.showSnackBar(
                context,
                'Weak Password',
                'Password should be more than 6 letters for better security.',
                ContentType.failure,
              );
            }
          },
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
