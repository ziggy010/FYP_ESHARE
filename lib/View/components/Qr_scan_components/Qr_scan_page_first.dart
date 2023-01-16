import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QrScanPageFirst extends StatelessWidget {
  const QrScanPageFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Scan this QR code to add this card to \n your account',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'poppins',
            fontSize: 14.sp,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 70.h,
        ),
        Container(
          height: 238.h,
          width: 238.w,
          decoration: BoxDecoration(
            color: kContainerColor,
            borderRadius: BorderRadius.circular(
              10.r,
            ),
          ),
        )
      ],
    );
  }
}
