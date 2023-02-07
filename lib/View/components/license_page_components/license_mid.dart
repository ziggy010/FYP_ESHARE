import 'package:e_share/View/components/license_page_components/license_back.dart';
import 'package:e_share/View/components/license_page_components/license_first.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LicenseMid extends StatelessWidget {
  final PageController pageController;
  final AnimationController animationController1, animationController2;

  LicenseMid({
    required this.pageController,
    required this.animationController1,
    required this.animationController2,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: 32.w,
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
            LicenseFirst(),
            LicenseBack(),
          ],
        ),
      ),
    );
  }
}
