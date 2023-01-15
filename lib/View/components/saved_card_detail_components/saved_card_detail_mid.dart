import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedCardDetailMid extends StatelessWidget {
  const SavedCardDetailMid({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 42.h,
          width: 73.w,
          decoration: BoxDecoration(
            color: kContainerColor,
            borderRadius: BorderRadius.circular(
              10.r,
            ),
            border: Border.all(
              color: kContainerColor,
            ),
          ),
          child: Center(
              child: Text(
            'Call',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'poppins',
              fontSize: 14.sp,
            ),
          )),
        ),
        Container(),
      ],
    );
  }
}
