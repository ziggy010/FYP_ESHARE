import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/components/main_components/my_card_details_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QrScanPageSecond extends StatelessWidget {
  const QrScanPageSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(
          24.r,
        ),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                'Share this card',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'poppins',
                  fontSize: 18.sp,
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              Text(
                'Scan this QR code to add this card to \nyour account',
                style: TextStyle(
                  color: Color(0x75FFFFFF),
                  fontFamily: 'poppins',
                  fontSize: 12.sp,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Container(
            height: 238.h,
            width: 238.w,
            decoration: BoxDecoration(
              color: kContainerColor,
              borderRadius: BorderRadius.circular(
                14.r,
              ),
            ),
          )
        ],
      ),
    );
  }
}
