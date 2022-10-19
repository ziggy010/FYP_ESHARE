import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDetailBottom extends StatefulWidget {
  const MyDetailBottom({super.key});

  @override
  State<MyDetailBottom> createState() => _MyDetailBottomState();
}

class _MyDetailBottomState extends State<MyDetailBottom> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 32.h),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: kGreyColor,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Share your card',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 16.sp,
                letterSpacing: 2,
                fontFamily: 'manrope',
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'Scan this QR code to add this card to\nyour account',
              style: TextStyle(
                color: Color(0x55FFFFFF),
                fontSize: 12.sp,
                letterSpacing: 1,
                fontFamily: 'manrope',
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              width: 185.w,
              height: 185.h,
              decoration: BoxDecoration(
                color: kGreyColor,
                borderRadius: BorderRadius.circular(20.r),
              ),
            ),
            SizedBox(
              height: 70.h,
            ),
          ],
        ),
      ),
    );
  }
}
