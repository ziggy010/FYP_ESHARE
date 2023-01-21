import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EshareHorizontalCard extends StatelessWidget {
  const EshareHorizontalCard({super.key});

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
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 18.w,
                  left: 15.h,
                  bottom: 10.w,
                ),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Risab Tajale',
                        style: cardTextStyle(20),
                      ),
                      Text(
                        'App Developer',
                        style: cardTextStyle(12),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.email_outlined,
                            color: kGoldenColor,
                            size: 16.sp,
                          ),
                          SizedBox(
                            width: 9.h,
                          ),
                          Expanded(
                            child: Text(
                              'tajale01@gmail.com',
                              style: cardTextStyle(11),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 9.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.phone_outlined,
                            color: kGoldenColor,
                            size: 16.sp,
                          ),
                          SizedBox(
                            width: 9.h,
                          ),
                          Text(
                            '9813110577',
                            style: cardTextStyle(11),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 15.h,
              ),
              child: Column(
                children: [
                  Image.asset(
                    'icons/app_icon_bg.png',
                    color: kGoldenColor,
                    fit: BoxFit.cover,
                    height: 80.h,
                  ),
                  Text(
                    'E-Share',
                    style: TextStyle(
                      color: kGoldenColor,
                      fontFamily: 'lobster',
                      fontSize: 24.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle cardTextStyle(double fontSize) {
    return TextStyle(
      color: kGoldenColor,
      fontFamily: 'poppins',
      fontSize: fontSize.sp,
    );
  }
}
