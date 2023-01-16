import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedCardDetailBottom extends StatelessWidget {
  final AnimationController animationController;
  final Animation animation;

  SavedCardDetailBottom({
    required this.animation,
    required this.animationController,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: 32.h,
        ),
        child: SlideTransition(
          position: Tween<Offset>(
            begin: Offset(0, 0.1),
            end: Offset.zero,
          ).animate(
            animationController,
          ),
          child: FadeTransition(
            opacity: animationController,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'Share this card',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'poppins',
                          fontSize: 18.sp,
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Text(
                        'Scan this QR code to add this card to \nyour account',
                        style: TextStyle(
                          color: Color(0x55FFFFFF),
                          fontFamily: 'poppins',
                          fontSize: 12.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Container(
                    height: 185.h,
                    width: 185.w,
                    decoration: BoxDecoration(
                      color: kUnselectedIconColor,
                      borderRadius: BorderRadius.circular(
                        14.r,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
