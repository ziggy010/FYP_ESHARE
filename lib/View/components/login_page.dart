import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/components/login_bottom.dart';
import 'package:e_share/View/components/login_page_components./login_mid.dart';
import 'package:e_share/View/components/login_page_components./login_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const String id = '/loginpage';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
            ),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  LoginTop(),
                  LoginMid(),
                  LoginBottom(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
