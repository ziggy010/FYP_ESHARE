import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EshareHorizontalFour extends StatelessWidget {
  const EshareHorizontalFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kContainerColor,
        borderRadius: BorderRadius.circular(12.r),
        image: const DecorationImage(
          image: AssetImage(
            'images/Eshare4b.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        // color: Colors.red,
        child: Stack(
          children: [
            Positioned(
              left: 30.h,
              top: 30.w,
              child: Container(
                height: 55.h,
                width: 200.w,
                // color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Risab Tajale',
                      style: basicTextStyle(fontSize: 22, font: 'lobster'),
                    ),
                    Text(
                      'App Developer',
                      style: basicTextStyle(fontSize: 10, font: 'poppins'),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 70.h,
                width: 100.w,
                // color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
