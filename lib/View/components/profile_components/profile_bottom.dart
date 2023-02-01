import 'package:e_share/View/card_design_page.dart';
import 'package:e_share/View/components/profile_components/profile_mid.dart';
import 'package:e_share/View/faq_page.dart';
import 'package:e_share/View/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

class ProfileBottom extends StatelessWidget {
  const ProfileBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 40.h,
      ),
      child: Column(
        children: [
          ProfileMid(
            image: Icons.wallet_outlined,
            title: 'Change Card',
            onTap: () {
              Get.toNamed(CardDesignPage.id);
            },
          ),
          ProfileMid(
            image: Icons.info_outline,
            title: 'About Us',
            onTap: () {},
          ),
          ProfileMid(
            image: Icons.info_outline,
            title: 'FAQs',
            onTap: () {
              Get.toNamed(FaqPage.id);
            },
          ),
          ProfileMid(
            image: Icons.logout_outlined,
            title: 'Sign Out',
            onTap: () {
              Get.toNamed(LoginPage.id);
            },
          ),
        ],
      ),
    );
  }
}
