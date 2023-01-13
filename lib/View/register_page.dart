import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/components/Register_page_components/register_bottom.dart';
import 'package:e_share/View/components/Register_page_components/register_mid.dart';
import 'package:e_share/View/components/Register_page_components/register_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterPage extends StatelessWidget {
  static const String id = '/registerPage';
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
            ),
            child: CustomScrollView(
              scrollDirection: Axis.vertical,
              slivers: [
                SliverFillRemaining(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      RegisterTop(),
                      RegisterMid(),
                      RegisterBottom(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
