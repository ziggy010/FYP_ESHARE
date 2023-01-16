import 'package:e_share/View/components/Qr_scan_components/Qr_scan_page_first.dart';
import 'package:e_share/View/components/Qr_scan_components/Qr_scan_page_second.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QrScanPageMid extends StatelessWidget {
  final PageController pageController;
  final AnimationController animationController1, animationController2;

  QrScanPageMid({
    required this.pageController,
    required this.animationController1,
    required this.animationController2,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: 32.h,
        ),
        child: PageView(
          controller: pageController,
          onPageChanged: (number) {
            if (number == 1) {
              animationController1.forward();
              animationController2.forward();
            } else {
              animationController1.reverse();
              animationController2.reverse();
            }
          },
          children: [
            QrScanPageFirst(),
            QrScanPageSecond(),
          ],
        ),
      ),
    );
  }
}
