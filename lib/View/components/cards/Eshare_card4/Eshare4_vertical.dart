import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Main files/constant.dart';
import '../Eshare_cards/Eshare_vertical_card.dart';

class EshareVerticalFour extends StatelessWidget {
  final String name, profession, email, number, website, address;

  EshareVerticalFour({
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
            'images/Eshare4a.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 140.w,
          ),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Text(
                        name,
                        style: kCardTextStyle(20, Color(0xFFCE915B)),
                      ),
                      Text(
                        profession,
                        style: kCardTextStyle(12, Color(0xFFCE915B)),
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
                        color: Color(0xFFCE915B),
                        main: MainAxisAlignment.center,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      cardRowDetail(
                        text: number,
                        icon: Icons.phone_outlined,
                        color: Color(0xFFCE915B),
                        main: MainAxisAlignment.center,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      cardRowDetail(
                        text: website,
                        icon: Icons.language_outlined,
                        color: Color(0xFFCE915B),
                        main: MainAxisAlignment.center,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      cardRowDetail(
                        text: address,
                        icon: Icons.location_on_outlined,
                        color: Color(0xFFCE915B),
                        main: MainAxisAlignment.center,
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
  }
}
