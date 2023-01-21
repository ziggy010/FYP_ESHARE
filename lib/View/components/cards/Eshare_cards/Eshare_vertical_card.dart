import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EshareVerticalCard extends StatelessWidget {
  const EshareVerticalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kContainerColor,
        image: DecorationImage(
          image: AssetImage(
            'images/card1.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Container(
            // color: Colors.red,
            child: Stack(
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
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
