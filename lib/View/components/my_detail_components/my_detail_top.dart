import 'dart:async';

import 'package:e_share/View/components/cards/e_share_horizontal_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Main files/constant.dart';

class MyDetailTop extends StatefulWidget {
  const MyDetailTop({super.key});

  @override
  State<MyDetailTop> createState() => _MyDetailTopState();
}

class _MyDetailTopState extends State<MyDetailTop>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 500,
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
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 30.h,
      ),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset(0, 0.1),
          end: Offset.zero,
        ).animate(_animationController),
        child: FadeTransition(
          opacity: _animationController,
          child: Container(
            height: 190.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kContainerColor,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: EshareCard(),
          ),
        ),
      ),
    );
  }
}
