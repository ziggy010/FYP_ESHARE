import 'package:e_share/View/components/license_page_components/license_back.dart';
import 'package:e_share/View/components/license_page_components/license_first.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LicenseMid extends StatelessWidget {
  final PageController pageController;

  LicenseMid({
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: 32.w,
        ),
        child: PageView(
          controller: pageController,
          children: [
            LicenseFirst(),
            LicenseBack(),
          ],
        ),
      ),
    );
  }
}
