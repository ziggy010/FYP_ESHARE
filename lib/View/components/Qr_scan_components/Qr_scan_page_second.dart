import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QrScanPageSecond extends StatelessWidget {
  const QrScanPageSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 384.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kContainerColor,
        borderRadius: BorderRadius.circular(
          24.r,
        ),
      ),
      child: Column(
        children: [Text(data)],
      ),
    );
  }
}
