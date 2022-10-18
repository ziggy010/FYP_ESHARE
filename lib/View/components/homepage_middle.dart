import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageMid extends StatelessWidget {
  const HomePageMid({super.key});

  @override
  Widget build(BuildContext context) {
    List homeTitle = [
      [
        'Visiting Card',
        true,
      ],
      [
        'Passport',
        false,
      ],
      [
        'Citizenship Card',
        false,
      ],
    ];

    return Padding(
      padding: EdgeInsets.only(
        top: 30.h,
      ),
      child: Column(
        children: [
          Container(
            height: 50.h,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: homeTitle.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(
                    right: 24.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        homeTitle[index][0],
                        style: TextStyle(
                          color:
                              homeTitle[index][1] ? Colors.white : kGreyColor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        height: 2.h,
                        width: 50.w,
                        color: homeTitle[index][1]
                            ? const Color(0xFF7B66FF)
                            : Colors.transparent,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
