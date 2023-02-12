import 'package:e_share/View/about_us_page.dart';
import 'package:e_share/View/card_design_page.dart';
import 'package:e_share/View/components/profile_components/profile_mid.dart';
import 'package:e_share/View/faq_page.dart';
import 'package:e_share/authentication/auth_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
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
            onTap: () {
              Get.toNamed(AboutUsPage.id);
            },
          ),
          ProfileMid(
            image: Icons.info_outline,
            title: 'FAQs',
            onTap: () {
              Get.toNamed(FaqPage.id);
            },
          ),
          GestureDetector(
            onTap: () {
              FirebaseAuth.instance.signOut();
              Get.offAllNamed(AuthPage.id);
            },
            child: ProfileMid(
              image: Icons.logout_outlined,
              title: 'Sign Out',
            ),
          ),
        ],
      ),
    );
  }
}
