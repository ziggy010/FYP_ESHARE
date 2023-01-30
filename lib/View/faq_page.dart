import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/components/faq_components/faq_page_mid.dart';
import 'package:e_share/View/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'components/faq_components/faq_page_top.dart';

class FaqPage extends StatelessWidget {
  static const String id = '/faqpage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              FaqPageTop(),
              FaqPageMid(),
            ],
          ),
        ),
      ),
    );
  }
}
