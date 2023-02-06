import 'package:flutter/material.dart';

import '../main_components/sliding_button.dart';

class LicenseTop extends StatelessWidget {
  final PageController pageController;
  final Animation animation1, animation2;
  final AnimationController animationController1,
      animationController2,
      animationController3;

  LicenseTop({
    required this.pageController,
    required this.animation1,
    required this.animation2,
    required this.animationController1,
    required this.animationController2,
    required this.animationController3,
  });

  @override
  Widget build(BuildContext context) {
    return SlidingButton(
      pageController: pageController,
      animation1: animation1,
      animation2: animation2,
      animationController1: animationController1,
      animationController2: animationController2,
      animationController3: animationController3,
      firstText: 'Front image',
      secondText: 'Back image',
    );
  }
}
