import 'dart:math';

import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EshareVerticalCard extends StatelessWidget {
  final String name, profession, email, number;

  EshareVerticalCard({
    required this.name,
    required this.profession,
    required this.email,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kContainerColor,
        image: DecorationImage(
          image: AssetImage(
            'images/card5.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'icons/app_icon_bg.png',
                  color: kGoldenColor,
                  height: 140.h,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  left: 20.h,
                  bottom: 0.w,
                  child: Text(
                    'E-Share',
                    style: TextStyle(
                      color: kGoldenColor,
                      fontFamily: 'lobster',
                      fontSize: 26.sp,
                      letterSpacing: 2,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 60.h,
            ),
            Container(
              // color: Colors.red,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: kCardTextStyle(20),
                  ),
                  Text(
                    profession,
                    style: kCardTextStyle(12),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              // color: Colors.red,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.phone_outlined,
                        color: kGoldenColor,
                      ),
                      SizedBox(
                        width: 9.h,
                      ),
                      Text(
                        email,
                        style: kCardTextStyle(13),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.email_outlined,
                        color: kGoldenColor,
                      ),
                      SizedBox(
                        width: 9.h,
                      ),
                      Text(
                        number,
                        style: kCardTextStyle(13),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
