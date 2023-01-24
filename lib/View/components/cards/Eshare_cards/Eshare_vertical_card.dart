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
          image: AssetImage("images/Eshare1a.png"),
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
                  cardRowDetail(
                    text: 'tajale01@gmail.com',
                    icon: Icons.email_outlined,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  cardRowDetail(
                    text: '9813110577',
                    icon: Icons.phone_outlined,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  cardRowDetail(
                    text: 'risab.com.np',
                    icon: Icons.language_outlined,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  cardRowDetail(
                    text: 'kamalbinayak, Bhaktapur',
                    icon: Icons.location_on_outlined,
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

class cardRowDetail extends StatelessWidget {
  final String text;
  final IconData icon;

  cardRowDetail({
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: kGoldenColor,
          size: 20.sm,
        ),
        SizedBox(
          width: 9.h,
        ),
        Text(
          text,
          style: kCardTextStyle(10),
        ),
      ],
    );
  }
}
