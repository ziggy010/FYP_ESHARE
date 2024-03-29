import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EshareHorizontalCard extends StatelessWidget {
  int cardNo = 1;

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
            'images/Eshare1b.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 18.w,
                  left: 15.h,
                  bottom: 10.w,
                ),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        GetCurrentUserModel.name,
                        style: cardTextStyle(20),
                      ),
                      Text(
                        GetCurrentUserModel.profession,
                        style: cardTextStyle(12),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.email_outlined,
                            color: kGoldenColor,
                            size: 16.sp,
                          ),
                          SizedBox(
                            width: 9.h,
                          ),
                          Expanded(
                            child: Text(
                              GetCurrentUserModel.email,
                              style: cardTextStyle(10),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.phone_outlined,
                            color: kGoldenColor,
                            size: 16.sp,
                          ),
                          SizedBox(
                            width: 9.h,
                          ),
                          Text(
                            GetCurrentUserModel.number,
                            style: cardTextStyle(10),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: kGoldenColor,
                            size: 16.sp,
                          ),
                          SizedBox(
                            width: 9.h,
                          ),
                          Text(
                            GetCurrentUserModel.address,
                            style: cardTextStyle(10),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.language_outlined,
                            color: kGoldenColor,
                            size: 16.sp,
                          ),
                          SizedBox(
                            width: 9.h,
                          ),
                          Text(
                            GetCurrentUserModel.website,
                            style: cardTextStyle(10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 15.h,
              ),
              child: Column(
                children: [
                  Image.asset(
                    'icons/app_icon_bg.png',
                    color: kGoldenColor,
                    fit: BoxFit.cover,
                    height: 80.h,
                  ),
                  Text(
                    'E-Share',
                    style: TextStyle(
                      color: kGoldenColor,
                      fontFamily: 'lobster',
                      fontSize: 24.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle cardTextStyle(double fontSize) {
    return TextStyle(
      color: kGoldenColor,
      fontFamily: 'poppins',
      fontSize: fontSize.sp,
    );
  }
}
