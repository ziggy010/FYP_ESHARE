import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Main files/constant.dart';

class MyDetailTop extends StatelessWidget {
  const MyDetailTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 30.h,
      ),
      child: Container(
        height: 190.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFF464855),
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
    );
  }
}
