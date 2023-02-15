import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/View/components/main_components/skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constant.dart';
import '../Eshare_cards/Eshare_vertical_card.dart';

class EshareVerticalFour extends StatelessWidget {
  final String name, profession, email, number, website, address;

  EshareVerticalFour({
    required this.name,
    required this.profession,
    required this.email,
    required this.number,
    required this.website,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kContainerColor,
        image: DecorationImage(
          image: AssetImage(
            'images/Eshare4a.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 140.w,
          ),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      FutureBuilder(
                        future: GetCurrentUserModel.getCurrentUserId(),
                        builder:
                            (BuildContext context, AsyncSnapshot snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return Text(
                              GetCurrentUserModel.name,
                              style: kCardTextStyle(20, Color(0xFFCE915B)),
                            );
                          }
                          return Skeleton(height: 22, width: 120);
                        },
                      ),
                      FutureBuilder(
                        future: GetCurrentUserModel.getCurrentUserId(),
                        builder:
                            (BuildContext context, AsyncSnapshot snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return Text(
                              GetCurrentUserModel.profession,
                              style: kCardTextStyle(12, Color(0xFFCE915B)),
                            );
                          }
                          return Skeleton(
                            height: 15,
                            width: 90,
                            padding: 7,
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Column(
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
                              color: Color(0xFFCE915B),
                              main: MainAxisAlignment.center,
                            );
                          }
                          return Skeleton(height: 14, width: 120);
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
                              text: GetCurrentUserModel.number,
                              icon: Icons.phone_outlined,
                              color: Color(0xFFCE915B),
                              main: MainAxisAlignment.center,
                            );
                          }
                          return Skeleton(height: 14, width: 90);
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
                              text: GetCurrentUserModel.website,
                              icon: Icons.language_outlined,
                              color: Color(0xFFCE915B),
                              main: MainAxisAlignment.center,
                            );
                          }
                          return Skeleton(height: 14, width: 100);
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
                              color: Color(0xFFCE915B),
                              main: MainAxisAlignment.center,
                            );
                          }
                          return Skeleton(height: 14, width: 70);
                        },
                      ),
                    ],
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
