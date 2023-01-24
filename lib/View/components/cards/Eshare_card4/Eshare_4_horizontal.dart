import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EshareHorizontalFour extends StatelessWidget {
  final String name, profession, address, email, number, website;

  EshareHorizontalFour({
    required this.name,
    required this.profession,
    required this.address,
    required this.email,
    required this.number,
    required this.website,
  });

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
                    name,
                    style: TextStyle(
                      color: Color(0xFFCE915B),
                      fontFamily: 'poppins',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    profession,
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
                        text: number,
                      ),
                      CardRowDetail(
                        icon: Icons.email_outlined,
                        text: email,
                      ),
                      CardRowDetail(
                        icon: Icons.language_outlined,
                        text: website,
                      ),
                      CardRowDetail(
                        icon: Icons.location_on_outlined,
                        text: address,
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
