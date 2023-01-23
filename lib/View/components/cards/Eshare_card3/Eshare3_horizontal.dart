import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EshareHorizontalThree extends StatelessWidget {
  const EshareHorizontalThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kContainerColor,
        borderRadius: BorderRadius.circular(12.r),
        image: const DecorationImage(
          image: AssetImage(
            'images/card7.jpg',
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
                  'Risab Tajale',
                  style: basicTextStyle(24, 'lobster'),
                ),
                Text(
                  'App Developer',
                  style: basicTextStyle(12, 'poppins'),
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
                    text: 'Kamalbinayak, Bhaktapur',
                    icon: Icons.location_on_outlined,
                  ),
                  CardRowDetail(
                    text: '9813110577',
                    icon: Icons.phone_outlined,
                  ),
                  CardRowDetail(
                    text: 'tajale01@gmail.com',
                    icon: Icons.email_outlined,
                  ),
                  CardRowDetail(
                    text: 'risab.com.np',
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
          style: basicTextStyle(10, 'poppins'),
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
