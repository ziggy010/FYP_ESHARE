import 'dart:math';

import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/Qr_scan_page.dart';
import 'package:e_share/View/card_design_page.dart';
import 'package:e_share/View/components/profile_components/profile_mid.dart';
import 'package:e_share/View/faq_page.dart';
import 'package:e_share/View/login_page.dart';
import 'package:e_share/View/saved_card_detail.dart';
import 'package:e_share/View/saved_card_page.dart';
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
            ProfileMid(
              image: Icons.bookmarks_outlined,
              title: 'Saved Cards',
              onTap: () {
                Get.toNamed(SavedCardsPage.id);
              },
            ),
            ProfileMid(
              image: Icons.wallet_outlined,
              title: 'Change Cards',
              onTap: () {
                Get.toNamed(CardDesignPage.id);
              },
            ),
            ProfileMid(
              image: Icons.info_outline_rounded,
              title: 'About Us',
              onTap: () {},
            ),
            ProfileMid(
              image: Icons.quiz_outlined,
              title: 'FAQs',
              onTap: () {
                Get.toNamed(FaqPage.id);
              },
            ),
            ProfileMid(
              image: Icons.logout_outlined,
              title: 'Sign Out',
              onTap: () {
                Get.toNamed(
                  LoginPage.id,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
