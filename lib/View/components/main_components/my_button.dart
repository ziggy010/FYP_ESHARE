import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
  final Color buttonColor;
  final String text;
  final Color borderColor;

  MyButton({
    this.borderColor = Colors.transparent,
    required this.buttonColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.h,
      width: 144.w,
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            color: borderColor,
            width: 1.5,
          )),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 13.sp,
          fontFamily: 'manrope',
          letterSpacing: 0.3,
        ),
      )),
    );
  }
}
