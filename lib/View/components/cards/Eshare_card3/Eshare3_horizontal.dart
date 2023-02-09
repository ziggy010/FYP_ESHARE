import 'package:e_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EshareHorizontalThree extends StatelessWidget {
  final String name, profession, address, email, number, website;

  int cardNo = 3;

  EshareHorizontalThree({
    required this.name,
    required this.profession,
    required this.address,
    required this.email,
    required this.number,
    required this.website,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kContainerColor,
        borderRadius: BorderRadius.circular(12.r),
        image: const DecorationImage(
          image: AssetImage(
            'images/Eshare3b.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: 20.w,
          right: 13.h,
          bottom: 8.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  name,
                  style: basicTextStyle(font: 'lobster', fontSize: 24),
                ),
                Text(
                  profession,
                  style: basicTextStyle(font: 'poppins', fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardRowDetail(
                    text: address,
                    icon: Icons.location_on_outlined,
                  ),
                  CardRowDetail(
                    text: number,
                    icon: Icons.phone_outlined,
                  ),
                  CardRowDetail(
                    text: email,
                    icon: Icons.email_outlined,
                  ),
                  CardRowDetail(
                    text: website,
                    icon: Icons.language_outlined,
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

class CardRowDetail extends StatelessWidget {
  final String text;
  final IconData icon;

  CardRowDetail({
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          text,
          style: basicTextStyle(
            font: 'poppins',
            fontSize: 10,
          ),
        ),
        SizedBox(
          width: 9.h,
        ),
        Icon(
          icon,
          color: kGoldenColor2,
          size: 16.sm,
        ),
      ],
    );
  }
}
