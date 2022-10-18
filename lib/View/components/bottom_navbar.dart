import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: kBottomNavBarColor,
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: Container(
        height: 60.h,
      ),
    );
  }
}
