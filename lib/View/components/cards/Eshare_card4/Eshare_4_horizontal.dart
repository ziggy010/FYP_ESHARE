import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EshareHorizontalFour extends StatelessWidget {
  const EshareHorizontalFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kContainerColor,
        borderRadius: BorderRadius.circular(12.r),
        image: const DecorationImage(
          image: AssetImage('images/Eshare4b.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Container(
        // color: Colors.blue,
        child: Padding(
          padding: EdgeInsets.only(
            top: 20.w,
            left: 10.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Risab Tajale',
                    style: TextStyle(
                      color: Color(0xFFCE915B),
                      fontFamily: 'poppins',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'App developer',
                    style: TextStyle(
                      color: Color(0xFFCE915B),
                      fontFamily: 'poppins',
                      fontSize: 10.sp,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CardRowDetail(
                        icon: Icons.phone_outlined,
                        text: '9813110577',
                      ),
                      CardRowDetail(
                        icon: Icons.email_outlined,
                        text: 'tajale01@gmail.com',
                      ),
                      CardRowDetail(
                        icon: Icons.language_outlined,
                        text: 'risab.com.np',
                      ),
                      CardRowDetail(
                        icon: Icons.location_on_outlined,
                        text: 'Kamalbinayak, Bhaktapur',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardRowDetail extends StatelessWidget {
  final String text;
  final IconData icon;

  CardRowDetail({
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Color(0xFFCE915B),
          size: 15.sm,
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xFFCE915B),
            fontFamily: 'poppins',
            fontSize: 10.sp,
          ),
        )
      ],
    );
  }
}
