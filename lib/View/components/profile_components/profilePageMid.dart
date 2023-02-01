import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/card_design_page.dart';
import 'package:e_share/View/saved_card_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

class ProfilePageMid extends StatelessWidget {
  const ProfilePageMid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 40.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ProfileContainer(
            number: '20',
            title: 'Saved Cards',
            icon: Icons.bookmark_outline,
            onTap: () {
              Get.toNamed(SavedCardsPage.id);
            },
          ),
          ProfileContainer(
            number: '2',
            title: 'Personal Cards',
            icon: Icons.wallet_outlined,
            onTap: () {
              Get.toNamed(CardDesignPage.id);
            },
          ),
        ],
      ),
    );
  }
}

class ProfileContainer extends StatelessWidget {
  final String number;
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  ProfileContainer({
    required this.number,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 145.h,
        width: 153.w,
        decoration: BoxDecoration(
          color: kContainerColor,
          borderRadius: BorderRadius.circular(
            10.r,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(
            16.sm,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 45.h,
                width: 45.w,
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.circular(
                    6.r,
                  ),
                ),
                child: Center(
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 30.sm,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    number,
                    style: TextStyle(
                      color: kSelectedColor,
                      fontFamily: 'poppins',
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'poppins',
                      fontSize: 14.sp,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
