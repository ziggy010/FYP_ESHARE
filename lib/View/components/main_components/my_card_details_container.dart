import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../Main files/constant.dart';

class MyCardDetailsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        Container(
          height: 185.h,
          width: 185.w,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 236, 235, 235),
            borderRadius: BorderRadius.circular(
              14.r,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(10.0.sm),
            child: QrImage(
              data:
                  'This is the longest text you\'ve ever seen in your life mother fucker',
              version: QrVersions.auto,
              size: 200.0,
              foregroundColor: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
