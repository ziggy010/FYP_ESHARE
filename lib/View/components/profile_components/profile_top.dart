import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTop extends StatelessWidget {
  const ProfileTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 50.r,
                backgroundImage: AssetImage('images/hero1.png'),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'Change picture',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'poppins',
                  fontSize: 11.sp,
                ),
              )
            ],
          ),
          SizedBox(
            width: 30.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Risab Tajale',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'poppins',
                  fontSize: 20.sp,
                ),
              ),
              Text(
                'App Developer',
                style: TextStyle(
                  color: Color.fromARGB(255, 225, 223, 223),
                  fontFamily: 'poppins',
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                'E-Share',
                style: TextStyle(
                  color: Color.fromARGB(255, 225, 223, 223),
                  fontFamily: 'poppins',
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
