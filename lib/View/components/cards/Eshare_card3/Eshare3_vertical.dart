import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Main files/constant.dart';
import '../Eshare_cards/Eshare_vertical_card.dart';

class EshareVerticalThree extends StatelessWidget {
  final String name, profession, email, number, website, address;
  EshareVerticalThree({
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
            'images/Eshare3a.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100.w,
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
                        style: kCardTextStyle(20, kGoldenColor2),
                      ),
                      Text(
                        profession,
                        style: kCardTextStyle(12, kGoldenColor2),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Column(
                    children: [
                      cardRowDetail(
                        text: email,
                        icon: Icons.email_outlined,
                        color: kGoldenColor2,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      cardRowDetail(
                        text: number,
                        icon: Icons.phone_outlined,
                        color: kGoldenColor2,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      cardRowDetail(
                        text: website,
                        icon: Icons.language_outlined,
                        color: kGoldenColor2,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      cardRowDetail(
                        text: address,
                        icon: Icons.location_on_outlined,
                        color: kGoldenColor2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
