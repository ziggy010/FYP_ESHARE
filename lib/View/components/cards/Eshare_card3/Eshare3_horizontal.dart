import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EshareHorizontalThree extends StatelessWidget {
  const EshareHorizontalThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: kContainerColor,
          borderRadius: BorderRadius.circular(12.r),
          image: const DecorationImage(
            image: AssetImage(
              'images/card7.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
