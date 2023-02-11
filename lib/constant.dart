import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const kBackgroundColor = Color(0xFF17171A);
const kNavbarColor = Color(0xFF211F30);
const kContainerColor = Color(0xFF211F30);
const kSelectedColor = Color(0xFF585CE5);
const kSelectedPrimary = Color.fromARGB(255, 47, 44, 68);
const kSwiperColor = Color(0xFF211F30);
const kSelectedTextColor = Colors.white;
const kGreyColor = Color(0x24FFFFFF);
const kBottomNavBarColor = Color(0xFF211F30);
const kUnselectedIconColor = Color(0xFFB2B2B3);
// const kGoldenColor = Color(0xFFE0CC6D);
const kGoldenColor = Color(0xFFFFD700);
const kGoldenColor2 = Color(0xFFFAB345);

//textstyles

var kAppBar = TextStyle(
  color: Colors.white,
  fontSize: 16,
);

TextStyle kCardTextStyle(double fontSize, Color color) {
  return TextStyle(
    color: color,
    fontFamily: 'poppins',
    fontSize: fontSize.sp,
  );
}

TextStyle basicTextStyle({
  required double fontSize,
  required String font,
}) {
  return TextStyle(
    color: Color(0xFFFAB345),
    fontFamily: font,
    fontSize: fontSize.sp,
  );
}