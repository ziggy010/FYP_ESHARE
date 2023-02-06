import 'dart:math';

import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EshareVerticalCard extends StatelessWidget {
  final String name, profession, email, number, website, address;

  EshareVerticalCard({
    required this.name,
    required this.profession,
    required this.email,
    required this.number,
    required this.address,
    required this.website,
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
                    style: kCardTextStyle(20, kGoldenColor),
                  ),
                  Text(
                    profession,
                    style: kCardTextStyle(12, kGoldenColor),
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
                    text: email,
                    icon: Icons.email_outlined,
                    color: kGoldenColor,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  cardRowDetail(
                    text: number,
                    icon: Icons.phone_outlined,
                    color: kGoldenColor,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  cardRowDetail(
                    text: website,
                    icon: Icons.language_outlined,
                    color: kGoldenColor,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  cardRowDetail(
                    text: address,
                    icon: Icons.location_on_outlined,
                    color: kGoldenColor,
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
  final Color color;
  final MainAxisAlignment main;

  cardRowDetail({
    required this.text,
    required this.icon,
    required this.color,
    this.main = MainAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      mainAxisAlignment: main,
      children: [
        Icon(
          icon,
          color: color,
          size: 20.sm,
        ),
        SizedBox(
          width: 9.h,
        ),
        Text(
          text,
          style: kCardTextStyle(
            10,
            color,
          ),
        ),
      ],
    );
  }
}
