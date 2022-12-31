import 'dart:async';

import 'package:e_share/View/components/main_components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDetailMid extends StatefulWidget {
  const MyDetailMid({super.key});

  @override
  State<MyDetailMid> createState() => _MyDetailMidState();
}

class _MyDetailMidState extends State<MyDetailMid>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    Timer(
      Duration(milliseconds: 200),
      () => _animationController.forward(),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20.h,
      ),
      child: SlideTransition(
        position: Tween<Offset>(begin: Offset(0, 2), end: Offset.zero)
            .animate(_animationController),
        child: FadeTransition(
          opacity: _animationController,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // MyButton(
              //   buttonColor: const Color(0xFF49495C),
              //   text: 'Update Design',
              // ),
              // MyButton(
              //   buttonColor: Colors.transparent,
              //   text: 'Edit Information',
              //   borderColor: const Color(0xFF49495C),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
