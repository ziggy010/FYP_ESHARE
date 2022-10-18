import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/components/homepage_middle.dart';
import 'package:e_share/View/components/homepage_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBakgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 24.h,
            // left: 24.w,
          ),
          child: Column(
            children: [
              HomePageTop(),
              HomePageMid(),
            ],
          ),
        ),
      ),
    );
  }
}
