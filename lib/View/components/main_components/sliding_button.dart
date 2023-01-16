import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Main files/constant.dart';

class SlidingButton extends StatelessWidget {
  final PageController pageController;
  final AnimationController animationController1,
      animationController2,
      animationController3;
  final Animation animation1, animation2;
  final String firstText;
  final String secondText;

  SlidingButton({
    required this.pageController,
    required this.animation1,
    required this.animation2,
    required this.animationController1,
    required this.animationController2,
    required this.animationController3,
    required this.firstText,
    required this.secondText,
  });

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, -0.3),
        end: Offset.zero,
      ).animate(animationController3),
      child: FadeTransition(
        opacity: animationController3,
        child: Container(
          height: 48.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kContainerColor,
            borderRadius: BorderRadius.circular(
              10.r,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(4.sm),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    pageController.animateToPage(
                      0,
                      duration: const Duration(milliseconds: 600),
                      curve: Curves.easeInOut,
                    );
                    animationController1.reverse();
                    animationController2.reverse();
                  },
                  child: Container(
                    height: 40.h,
                    width: 149.w,
                    decoration: BoxDecoration(
                      color: animation1.value,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                        child: Text(
                      firstText,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'poppins',
                        fontSize: 12.sp,
                      ),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    pageController.animateToPage(
                      1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                    animationController2.forward();
                    if (animationController1.isDismissed ||
                        animationController1.isCompleted) {
                      animationController1.forward();
                    }
                  },
                  child: Container(
                    height: 40.h,
                    width: 149.w,
                    decoration: BoxDecoration(
                      color: animation2.value,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                        child: Text(
                      secondText,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'poppins',
                        fontSize: 12.sp,
                      ),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
