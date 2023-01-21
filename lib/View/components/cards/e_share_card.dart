import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EshareCard extends StatelessWidget {
  const EshareCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kContainerColor,
        borderRadius: BorderRadius.circular(
          12.r,
        ),
        image: const DecorationImage(
          image: AssetImage(
            'images/card1.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  child: Image.asset(
                    'icons/card_icon.png',
                    color: kGoldenColor,
                    height: 100.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  'E-Share',
                  style: TextStyle(
                    color: kGoldenColor,
                    fontFamily: 'lobster',
                    fontSize: 20.sp,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  'Risab Tajale',
                  style: TextStyle(
                    color: kGoldenColor,
                    fontFamily: 'poppins',
                    fontSize: 18.sp,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
