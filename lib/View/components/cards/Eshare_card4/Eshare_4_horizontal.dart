import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EshareHorizontalFour extends StatelessWidget {
  final _color = Color(0xFFF9DD6F);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kContainerColor,
        borderRadius: BorderRadius.circular(12.r),
        image: const DecorationImage(
          image: AssetImage(
            'images/Eshare4b.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        // color: Colors.red,
        child: Stack(
          children: [
            Positioned(
              left: 30.h,
              top: 30.w,
              child: Container(
                height: 55.h,
                width: 200.w,
                // color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Risab Tajale',
                      style: TextStyle(
                        color: _color,
                        fontFamily: 'lobster',
                        fontSize: 22.sp,
                      ),
                    ),
                    Text(
                      'App Developer',
                      style: TextStyle(
                        color: _color,
                        fontFamily: 'poppins',
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 70.h,
                width: 280.w,
                // color: Colors.blue,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CardDetailRow(
                            color: _color,
                            icon: Icons.location_on_outlined,
                            text: 'Kamalbinayak, Bhaktapur',
                          ),
                          CardDetailRow(
                            color: _color,
                            icon: Icons.email_outlined,
                            text: 'tajale01@gmail.com',
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CardDetailRow(
                            color: _color,
                            icon: Icons.phone_outlined,
                            text: '9813110577',
                          ),
                          CardDetailRow(
                            color: _color,
                            icon: Icons.language_outlined,
                            text: 'risab.com.np',
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardDetailRow extends StatelessWidget {
  const CardDetailRow({
    Key? key,
    required Color color,
    required this.icon,
    required this.text,
  })  : _color = color,
        super(key: key);

  final Color _color;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: _color,
          size: 15.sm,
        ),
        SizedBox(
          width: 9.w,
        ),
        Text(
          text,
          style: TextStyle(
            color: _color,
            fontFamily: 'poppins',
            fontSize: 10.sp,
          ),
        )
      ],
    );
  }
}
