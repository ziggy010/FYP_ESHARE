import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedCardDetailTop extends StatelessWidget {
  const SavedCardDetailTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 192.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kContainerColor,
        borderRadius: BorderRadius.circular(
          20.r,
        ),
      ),
    );
  }
}
