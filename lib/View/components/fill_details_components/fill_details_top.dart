import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FillDetailsTop extends StatelessWidget {
  const FillDetailsTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Fill all your details',
          style: TextStyle(
            fontFamily: 'poppins',
            fontSize: 30.sp,
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          'For your new',
          style: TextStyle(
            fontFamily: 'poppinsLight',
            fontSize: 24.sp,
            letterSpacing: 3,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          'Business card',
          style: TextStyle(
            fontFamily: 'poppinsLight',
            fontSize: 24.sp,
            letterSpacing: 3,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
