import 'package:e_share/View/components/card_design_components/free_deisgn.dart';
import 'package:e_share/View/components/card_design_components/premium_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardDesignMid extends StatelessWidget {
  const CardDesignMid({super.key});

  @override
  Widget build(BuildContext context) {
    final _pageController = PageController();

    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: 24.h,
        ),
        child: PageView(
          controller: _pageController,
          onPageChanged: (number) {},
          children: const [
            FreeDesign(),
            PremiumDesign(),
          ],
        ),
      ),
    );
  }
}
