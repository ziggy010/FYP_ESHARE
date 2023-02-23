import 'dart:math';

import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/View/components/main_components/skeleton.dart';
import 'package:e_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class EshareVerticalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kContainerColor,
        image: DecorationImage(
          image: AssetImage("images/Eshare1a.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'icons/app_icon_bg.png',
                  color: kGoldenColor,
                  height: 140.h,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  left: 20.h,
                  bottom: 0.w,
                  child: Text(
                    'E-Share',
                    style: TextStyle(
                      color: kGoldenColor,
                      fontFamily: 'lobster',
                      fontSize: 26.sp,
                      letterSpacing: 2,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 60.h,
            ),
            Container(
              // color: Colors.red,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FutureBuilder(
                    future: GetCurrentUserModel.getCurrentUserId(),
                    initialData: CircularProgressIndicator,
                    builder: ((context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return Text(
                          GetCurrentUserModel.name,
                          style: kCardTextStyle(20, kGoldenColor),
                        );
                      }
                      return Skeleton(height: 22, width: 120);
                    }),
                  ),
                  FutureBuilder(
                    future: GetCurrentUserModel.getCurrentUserId(),
                    builder: ((context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return Text(
                          GetCurrentUserModel.profession,
                          style: kCardTextStyle(12, kGoldenColor),
                        );
                      }
                      return Skeleton(height: 19, width: 90, padding: 7);
                    }),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              // color: Colors.red,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FutureBuilder(
                    future: GetCurrentUserModel.getCurrentUserId(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return cardRowDetail(
                          text: GetCurrentUserModel.email,
                          icon: Icons.email_outlined,
                          color: kGoldenColor,
                        );
                      }
                      return Skeleton(height: 16, width: 120);
                    },
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  FutureBuilder(
                    future: GetCurrentUserModel.getCurrentUserId(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return cardRowDetail(
                          text: GetCurrentUserModel.number,
                          icon: Icons.phone_outlined,
                          color: kGoldenColor,
                        );
                      }
                      return Skeleton(height: 16, width: 80);
                    },
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  FutureBuilder(
                    future: GetCurrentUserModel.getCurrentUserId(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return cardRowDetail(
                          text: GetCurrentUserModel.website,
                          icon: Icons.language_outlined,
                          color: kGoldenColor,
                        );
                      }
                      return Skeleton(height: 16, width: 90);
                    },
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  FutureBuilder(
                    future: GetCurrentUserModel.getCurrentUserId(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return cardRowDetail(
                          text: GetCurrentUserModel.address,
                          icon: Icons.location_on_outlined,
                          color: kGoldenColor,
                        );
                      }
                      return Skeleton(height: 16, width: 90);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class cardRowDetail extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final MainAxisAlignment main;

  cardRowDetail({
    required this.text,
    required this.icon,
    required this.color,
    this.main = MainAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      mainAxisAlignment: main,
      children: [
        Icon(
          icon,
          color: color,
          size: 20.sm,
        ),
        SizedBox(
          width: 9.h,
        ),
        Text(
          text,
          style: kCardTextStyle(
            10,
            color,
          ),
        ),
      ],
    );
  }
}
