import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: kBottomNavBarColor,
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: Container(
        height: 65.h,
        child: Padding(
          padding: EdgeInsets.only(
            left: 60.w,
            right: 60.w,
            top: 20.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset(
                    'icons/home.png',
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'My Cards',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 7.sp,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    'icons/saved_card.png',
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'Saved Cards',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 7.sp,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
