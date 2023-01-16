import 'dart:async';

import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/components/main_components/my_card_details_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDetailBottom extends StatefulWidget {
  const MyDetailBottom({super.key});

  @override
  State<MyDetailBottom> createState() => _MyDetailBottomState();
}

class _MyDetailBottomState extends State<MyDetailBottom>
    with TickerProviderStateMixin {
  //animation
  late AnimationController _animationController;

  late Animation _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    Timer(
      const Duration(milliseconds: 50),
      (() => _animationController.forward()),
    );

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 32.h),
      child: SlideTransition(
        position: Tween<Offset>(begin: Offset(0, 0.1), end: Offset.zero)
            .animate(_animationController),
        child: FadeTransition(
          opacity: _animationController,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF464855),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: MyCardDetailsContainer(),
          ),
        ),
      ),
    );
  }
}
