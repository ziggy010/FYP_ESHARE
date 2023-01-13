import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterTop extends StatelessWidget {
  const RegisterTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Discover your new',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'poppins',
            fontSize: 30.sp,
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          'Business card',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'poppinsLight',
            fontSize: 24.sp,
            letterSpacing: 3,
          ),
        ),
      ],
    );
  }
}
