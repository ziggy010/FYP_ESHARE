import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/components/main_components/my_button.dart';
import 'package:e_share/View/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

class FillDetailsBottom extends StatelessWidget {
  final VoidCallback onTap;

  FillDetailsBottom({
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MyButton(
      onTap: onTap,
      height: 57.h,
      width: double.infinity,
      buttonColor: kSelectedColor,
      borderRadius: 16,
      textWidget: Text(
        'Submit',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'poppins',
          fontWeight: FontWeight.bold,
          fontSize: 16.sp,
        ),
      ),
    );
  }
}
