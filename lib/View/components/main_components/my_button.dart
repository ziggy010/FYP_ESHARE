import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Color buttonColor;
  final Color borderColor;
  final int borderRadius;
  final Widget textWidget;

  MyButton({
    required this.height,
    required this.width,
    this.borderColor = Colors.transparent,
    required this.buttonColor,
    required this.borderRadius,
    required this.textWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(borderRadius.r),
        border: Border.all(
          color: borderColor,
          width: 1.5,
        ),
      ),
      child: Center(
        child: textWidget,
      ),
    );
  }
}
