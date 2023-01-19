import 'package:e_share/Controller/fab_controller.dart';
import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/Qr_scan_page.dart';
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
        child: ListView(
          children: [
            InnerContainer(
              text: 'Citizenship',
              onTap: () {},
            ),
            InnerContainer(
              text: 'passport',
              onTap: () {},
            ),
            InnerContainer(
              text: 'QR Scan',
              onTap: () {
                Get.toNamed(QrScanPage.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class InnerContainer extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  late FabController fabController = Get.find<FabController>();

  InnerContainer({
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: 16.w,
        ),
        child: AnimatedContainer(
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
        ),
      ),
    );
  }
}
