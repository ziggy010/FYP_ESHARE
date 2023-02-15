import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EshareHorizontalTwo extends StatelessWidget {
  final String name, profession, address, number, email, website;

  int cardNo = 2;

  EshareHorizontalTwo({
    required this.name,
    required this.profession,
    required this.address,
    required this.number,
    required this.email,
    required this.website,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kContainerColor,
        borderRadius: BorderRadius.circular(
          12.r,
        ),
        image: const DecorationImage(
          image: AssetImage(
            'images/Eshare2b.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: 20.w,
          right: 20.h,
          bottom: 10.w,
        ),
        child: Container(
          // color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    GetCurrentUserModel.name,
                    style: TextStyle(
                      color: kGoldenColor,
                      fontFamily: 'lobster',
                      fontSize: 23.sp,
                      letterSpacing: 2,
                    ),
                  ),
                  Text(
                    GetCurrentUserModel.profession,
                    style: TextStyle(
                      color: kGoldenColor,
                      fontFamily: 'poppins',
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    height: 2.h,
                    width: 70.w,
                    color: kGoldenColor,
                  )
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 10.w,
                  ),
                  child: Container(
                    // color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CardDetailRow(
                          text: GetCurrentUserModel.address,
                          icon: Icons.location_on_outlined,
                          fontSize: 10,
                        ),
                        CardDetailRow(
                          text: GetCurrentUserModel.number,
                          icon: Icons.phone_outlined,
                          fontSize: 10,
                        ),
                        CardDetailRow(
                          text: GetCurrentUserModel.email,
                          icon: Icons.email_outlined,
                          fontSize: 10,
                        ),
                        CardDetailRow(
                          text: GetCurrentUserModel.website,
                          icon: Icons.language_outlined,
                          fontSize: 10,
                        ),
                      ],
                    ),
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

class CardDetailRow extends StatelessWidget {
  final String text;
  final IconData icon;
  final double fontSize;

  CardDetailRow({
    required this.text,
    required this.icon,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          text,
          style: kCardTextStyle(
            fontSize,
            kGoldenColor,
          ),
        ),
        SizedBox(
          width: 9.h,
        ),
        Icon(
          icon,
          color: kGoldenColor,
          size: 17.sm,
        ),
      ],
    );
  }
}
