import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EshareHorizontalTwo extends StatelessWidget {
  const EshareHorizontalTwo({super.key});

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
            'images/card6.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(
          20.sm,
        ),
        child: Container(
          // color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Risab Tajale',
                    style: TextStyle(
                      color: kGoldenColor,
                      fontFamily: 'lobster',
                      fontSize: 23.sp,
                      letterSpacing: 2,
                    ),
                  ),
                  Text(
                    'App Developer',
                    style: TextStyle(
                      color: kGoldenColor,
                      fontFamily: 'poppins',
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    height: 2.h,
                    width: 70.w,
                    color: kGoldenColor,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
