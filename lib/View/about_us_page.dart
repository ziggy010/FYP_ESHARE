import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/components/about_us_components/about_us_bottom.dart';
import 'package:e_share/View/components/about_us_components/about_us_mid.dart';
import 'package:e_share/View/components/cards/Eshare_card2/Eshare2_horizontal.dart';
import 'package:e_share/View/components/cards/Eshare_card3/Eshare3_horizontal.dart';
import 'package:e_share/View/components/cards/Eshare_card4/Eshare_4_horizontal.dart';
import 'package:e_share/View/components/cards/Eshare_cards/Eshare_horizontal_card.dart';
import 'package:e_share/View/components/faq_components/faq_page_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class AboutUsPage extends StatelessWidget {
  static const String id = '/aboutUs';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FaqPageTop(),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'About Us',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'poppins',
                  fontSize: 35.sp,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
              AboutUsMid(),
              AboutUsBottom(),
            ],
          ),
        ),
      ),
    );
  }
}
