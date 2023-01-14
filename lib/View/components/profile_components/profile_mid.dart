import 'dart:async';

import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileMid extends StatefulWidget {
  final String image;
  final String title;

  ProfileMid({
    required this.image,
    required this.title,
  });

  @override
  State<ProfileMid> createState() => _ProfileMidState();
}

class _ProfileMidState extends State<ProfileMid> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 400,
      ),
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    Timer(
      Duration(milliseconds: 200),
      () => _animationController.forward(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset(-0.2, 0.0),
        end: Offset.zero,
      ).animate(
        _animationController,
      ),
      child: FadeTransition(
        opacity: _animationController,
        child: Padding(
          padding: EdgeInsets.only(bottom: 16.w),
          child: Container(
            height: 48.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kContainerColor,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                right: 21.h,
                left: 10.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 60.w,
                        child: Image.asset(
                          'icons/${widget.image}',
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '${widget.title}',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'poppins',
                          fontSize: 14.sp,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
