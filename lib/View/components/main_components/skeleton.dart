import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class Skeleton extends StatelessWidget {
  final double height;
  final double width;
  final double padding;

  Skeleton({
    required this.height,
    required this.width,
    this.padding = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: padding,
      ),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.withOpacity(0.25),
        highlightColor: Colors.white.withOpacity(0.6),
        child: Container(
          height: height.h,
          width: width.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.r),
            color: Colors.grey.withOpacity(0.9),
          ),
        ),
      ),
    );
  }
}
