import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 16.w,
        left: 5.h,
        right: 5.h,
      ),
      child: Container(
        height: 190.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kContainerColor,
          borderRadius: BorderRadius.circular(
            20.r,
          ),
        ),
      ),
    );
  }
}
