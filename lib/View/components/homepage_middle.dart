import 'package:card_swiper/card_swiper.dart';
import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageMid extends StatelessWidget {
  const HomePageMid({super.key});

  @override
  Widget build(BuildContext context) {
    List homeTitle = [
      [
        'Visiting card',
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

    List swiperContent = [
      'images/try.png',
      'images/try.png',
      'images/try.png',
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
                    left: 24.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        homeTitle[index][0],
                        style: TextStyle(
                          color:
                              homeTitle[index][1] ? Colors.white : kGreyColor,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.9,
                          fontFamily: 'manrope',
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
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
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Container(
              height: 453.h,
              child: Swiper(
                itemCount: 3,
                layout: SwiperLayout.STACK,
                itemHeight: 400.h,
                itemWidth: 250.w,
                axisDirection: AxisDirection.right,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(18.r),
                    child: Image.asset(
                      swiperContent[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
                pagination: SwiperPagination(
                  margin: EdgeInsets.only(
                    left: 15.w,
                  ),
                  builder: const DotSwiperPaginationBuilder(
                    activeColor: Color(0xFF5D5FEF),
                    color: Color(0x305D5FEF),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
