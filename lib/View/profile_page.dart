import 'dart:math';

import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/Qr_scan_page.dart';
import 'package:e_share/View/card_design_page.dart';
import 'package:e_share/View/components/profile_components/profile_mid.dart';
import 'package:e_share/View/saved_card_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  static const String id = '/profilePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kNavbarColor,
        title: Text(
          'Profile',
          style: kAppBar,
        ),
      ),
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: EdgeInsets.all(24.0.sm),
        child: Column(
          children: [
            ProfileMid(image: 'saved_card1.png', title: 'Saved Cards'),
            ProfileMid(
              image: 'change_card.png',
              title: 'Change Cards',
              onTap: () {
                Get.toNamed(CardDesignPage.id);
              },
            ),
            ProfileMid(
              image: 'about_us.png',
              title: 'About Us',
              onTap: () {
                Get.toNamed(QrScanPage.id);
              },
            ),
            ProfileMid(
              image: 'about_us.png',
              title: 'FAQs',
              onTap: () {
                Get.toNamed(
                  SavedCardDetail.id,
                );
              },
            ),
            ProfileMid(image: 'logout.png', title: 'Sign Out'),
          ],
        ),
      ),
    );
  }
}
