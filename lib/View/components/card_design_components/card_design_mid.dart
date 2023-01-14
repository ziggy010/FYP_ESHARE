import 'package:e_share/Controller/card_design_controller/card_design_controller.dart';
import 'package:e_share/View/components/card_design_components/free_deisgn.dart';
import 'package:e_share/View/components/card_design_components/premium_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CardDesignMid extends StatelessWidget {
  CardDesignController _cardDesignController = Get.put(CardDesignController());

  final PageController pageController;
  final AnimationController animationController1, animationController2;

  CardDesignMid({
    required this.pageController,
    required this.animationController1,
    required this.animationController2,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: 24.h,
        ),
        child: PageView(
          controller: pageController,
          onPageChanged: (number) {
            _cardDesignController.changePageNumber(number);
            if (number == 1) {
              animationController2.forward();
              animationController1.forward();
            }
            if (number == 0) {
              animationController1.reverse();
              animationController2.reverse();
            }
          },
          children: const [
            FreeDesign(),
            PremiumDesign(),
          ],
        ),
      ),
    );
  }
}
