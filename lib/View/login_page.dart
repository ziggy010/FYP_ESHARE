import 'package:e_share/constant.dart';
import 'package:e_share/View/components/login_page_components./login_bottom.dart';
import 'package:e_share/View/components/login_page_components./login_mid.dart';
import 'package:e_share/View/components/login_page_components./login_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  static const String id = '/loginpage';

  final TextEditingController _loginEmailController = TextEditingController();
  final TextEditingController _loginPasswordController =
      TextEditingController();

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
            child: CustomScrollView(
              scrollDirection: Axis.vertical,
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      LoginTop(),
                      LoginMid(
                        loginEmailController: _loginEmailController,
                        loginPasswordController: _loginPasswordController,
                      ),
                      LoginBottom(
                        loginEmailTextController: _loginEmailController,
                        loginPasswordTextController: _loginPasswordController,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
