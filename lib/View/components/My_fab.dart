import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyFab extends StatefulWidget {
  const MyFab({super.key});

  @override
  State<MyFab> createState() => _MyFabState();
}

class _MyFabState extends State<MyFab> with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
  }

  bool isFabPressed = false;

  void fabOnPressed() {
    setState(() {
      isFabPressed = !isFabPressed;
    });
    isFabPressed
        ? _animationController.forward()
        : _animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.h,
      width: 72.w,
      child: FloatingActionButton(
        highlightElevation: 0,
        focusElevation: 0.0,
        backgroundColor: kSelectedColor,
        onPressed: fabOnPressed,
        child: isFabPressed
            ? RotationTransition(
                turns: _animationController,
                child: Image.asset('icons/cross.png'),
              )
            : RotationTransition(
                turns: _animationController,
                child: Image.asset('icons/scanner.png'),
              ),
      ),
    );
  }
}
