import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardDesignTop extends StatelessWidget {
  final PageController pageController;

  CardDesignTop({
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          children: [
            GestureDetector(
              onTap: () {
                pageController.animateToPage(
                  0,
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.easeInOut,
                );
              },
              child: Container(
                height: 40.h,
                width: 149.w,
                decoration: BoxDecoration(
                  color: kSelectedColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                    child: Text(
                  'Free Designs',
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
              },
              child: Container(
                height: 40.h,
                width: 149.w,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                    child: Text(
                  'Premium Designs',
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
    );
  }
}
