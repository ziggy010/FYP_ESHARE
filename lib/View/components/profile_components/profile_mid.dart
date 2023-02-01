import 'dart:async';

import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileMid extends StatelessWidget {
  final IconData image;
  final String title;
  final VoidCallback? onTap;

  ProfileMid({
    required this.image,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.w),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 48.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kContainerColor,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              right: 21.h,
              left: 10.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 60.w,
                      child: Icon(
                        image,
                        color: Colors.white,
                      ),
                      // child: Image.asset(
                      //   'icons/Union.png',
                      //   color: Colors.white,
                      // ),
                    ),
                    Text(
                      '$title',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'poppins',
                        fontSize: 14.sp,
                      ),
                    )
                  ],
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
