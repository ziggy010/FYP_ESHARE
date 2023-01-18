import 'dart:async';

import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileMid extends StatefulWidget {
  final IconData image;
  final String title;
  final VoidCallback? onTap;

  ProfileMid({
    required this.image,
    required this.title,
    this.onTap,
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
        milliseconds: 450,
      ),
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    Timer(
      Duration(milliseconds: 50),
      () => _animationController.forward(),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset(-0.1, 0.0),
        end: Offset.zero,
      ).animate(
        _animationController,
      ),
      child: FadeTransition(
        opacity: _animationController,
        child: Padding(
          padding: EdgeInsets.only(bottom: 16.w),
          child: GestureDetector(
            onTap: widget.onTap,
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
                          child: Icon(
                            widget.image,
                            color: Colors.white,
                          ),
                          // child: Image.asset(
                          //   'icons/Union.png',
                          //   color: Colors.white,
                          // ),
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
                      children: const [
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
      ),
    );
  }
}
