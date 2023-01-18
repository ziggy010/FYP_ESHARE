import 'package:e_share/Controller/fab_controller.dart';
import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OptionBox extends StatelessWidget {
  late FabController _fabController = Get.find<FabController>();

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 400,
      ),
      curve: Curves.easeInOut,
      height: _fabController.height.value.h,
      width: _fabController.width.value.w,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(
          10.r,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(
          16.sm,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InnerContainer(text: 'Citizenship'),
            InnerContainer(text: 'passport'),
            InnerContainer(text: 'QR Scan'),
          ],
        ),
      ),
    );
  }
}

class InnerContainer extends StatelessWidget {
  final String text;
  late FabController fabController = Get.find<FabController>();

  InnerContainer({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
      height: fabController.innerHeight.value.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kContainerColor,
        borderRadius: BorderRadius.circular(
          10.r,
        ),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'poppins',
          fontSize: 14.sp,
        ),
      )),
    );
  }
}
