import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageTop extends StatelessWidget {
  const HomePageTop({super.key});

  @override
  Widget build(BuildContext context) {
    //home page top part component for simple accesss.
    return Padding(
      padding: EdgeInsets.only(right: 24.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Risab',
                style: TextStyle(
                  color: const Color(0x54FFFFFF),
                  fontSize: 14.sp,
                ),
              ),
              Text(
                'Welcome Back!',
                style: TextStyle(
                  color: const Color(0x95FFFFFF),
                  fontSize: 18.sp,
                ),
              )
            ],
          ),
          CircleAvatar(
            radius: 22.r,
            backgroundImage: const AssetImage(
              'images/hero.png',
            ),
            backgroundColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
