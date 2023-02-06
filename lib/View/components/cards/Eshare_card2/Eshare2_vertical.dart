import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Eshare_cards/Eshare_vertical_card.dart';

class EshareVerticalTwo extends StatelessWidget {
  final String name, profession, email, number, website, address;

  EshareVerticalTwo({
    required this.name,
    required this.profession,
    required this.email,
    required this.number,
    required this.website,
    required this.address,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kContainerColor,
        image: DecorationImage(
          image: AssetImage(
            'images/Eshare2a.png',
          ),
          fit: BoxFit.cover,
        ),
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
            height: 60.w,
          ),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
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
          ),
        ],
      ),
    );
  }
}
