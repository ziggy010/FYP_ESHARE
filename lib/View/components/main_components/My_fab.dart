import 'package:e_share/Controller/fab_controller.dart';
import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyFab extends StatefulWidget {
  @override
  State<MyFab> createState() => _MyFabState();
}

class _MyFabState extends State<MyFab> with TickerProviderStateMixin {
  //initializing the animationcontroller and fab controller

  late AnimationController _animationController;
  late FabController _fabController = Get.find<FabController>();

  //initi state
  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
  }

  //creating method to trigger when fab button is clicked.
  void fabOnPressed() {
    // calling controller metthod
    _fabController.changeIsFab();

    _fabController.isFabPressed.value
        ? _animationController.forward()
        : _animationController.reverse();

    _fabController.changeContainer();
    // _fabController.initializeAnimation();
    _fabController.changeBackgroundColor();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.h,
      width: 72.w,
      child: Obx(
        (() {
          return FloatingActionButton(
            foregroundColor: Colors.transparent,
            enableFeedback: false,
            splashColor: Colors.transparent,
            backgroundColor: kSelectedColor,
            onPressed: fabOnPressed,
            child: _fabController.isFabPressed.value
                ? RotationTransition(
                    turns: _animationController,
                    child: const Icon(
                      Icons.close_rounded,
                      color: Colors.white,
                    ))
                : RotationTransition(
                    turns: _animationController,
                    // child: Image.asset('icons/scanner.png'),
                    child: Icon(
                      Icons.center_focus_weak_outlined,
                      color: Colors.white,
                    ),
                  ),
          );
        }),
      ),
    );
  }
}
