import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/View/components/main_components/skeleton.dart';
import 'package:e_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Eshare_cards/Eshare_vertical_card.dart';

class EshareVerticalTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kContainerColor,
        image: DecorationImage(
          image: AssetImage(
            'images/Eshare2a.png',
          ),
          fit: BoxFit.cover,
        ),
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
            height: 60.w,
          ),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FutureBuilder(
                        future: GetCurrentUserModel.getCurrentUserId(),
                        initialData: CircularProgressIndicator,
                        builder: ((context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
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
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
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
                          builder:
                              (BuildContext context, AsyncSnapshot snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.done) {
                              return cardRowDetail(
                                text: GetCurrentUserModel.email,
                                icon: Icons.email_outlined,
                                color: kGoldenColor,
                              );
                            }
                            return Skeleton(height: 15, width: 120);
                          },
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        FutureBuilder(
                          future: GetCurrentUserModel.getCurrentUserId(),
                          builder: ((context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.done) {
                              return cardRowDetail(
                                text: GetCurrentUserModel.number,
                                icon: Icons.phone_outlined,
                                color: kGoldenColor,
                              );
                            }
                            return Skeleton(height: 15, width: 80);
                          }),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        FutureBuilder(
                          future: GetCurrentUserModel.getCurrentUserId(),
                          builder:
                              (BuildContext context, AsyncSnapshot snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.done) {
                              return cardRowDetail(
                                text: GetCurrentUserModel.website,
                                icon: Icons.language_outlined,
                                color: kGoldenColor,
                              );
                            }
                            return Skeleton(height: 15, width: 90);
                          },
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        FutureBuilder(
                          future: GetCurrentUserModel.getCurrentUserId(),
                          builder:
                              (BuildContext context, AsyncSnapshot snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.done) {
                              return cardRowDetail(
                                text: GetCurrentUserModel.address,
                                icon: Icons.location_on_outlined,
                                color: kGoldenColor,
                              );
                            }
                            return Skeleton(height: 15, width: 90);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
