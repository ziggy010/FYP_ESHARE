import 'package:e_share/View/components/citizenship_components/citizenship_first.dart';
import 'package:e_share/View/components/citizenship_components/citzenship_second.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Main files/constant.dart';

class CitizenshipMid extends StatelessWidget {
  final PageController pageController;
  final AnimationController animationController1, animationController2;

  CitizenshipMid({
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
            CitizenshipFirst(),
            CitizenshipSecond(),
          ],
        ),
      ),
    );
  }
}
