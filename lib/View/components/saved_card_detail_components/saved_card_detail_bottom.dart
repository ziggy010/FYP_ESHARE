import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedCardDetailBottom extends StatelessWidget {
  const SavedCardDetailBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: 32.h,
        ),
        child: Container(
          height: 200.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kContainerColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                10.r,
              ),
              topRight: Radius.circular(
                10.r,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
