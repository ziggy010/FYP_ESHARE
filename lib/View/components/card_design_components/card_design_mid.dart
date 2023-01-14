import 'package:e_share/Controller/card_design_controller/card_design_controller.dart';
import 'package:e_share/View/components/card_design_components/free_deisgn.dart';
import 'package:e_share/View/components/card_design_components/premium_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CardDesignMid extends StatelessWidget {
  CardDesignController _cardDesignController = Get.put(CardDesignController());

  final PageController pageController;

  CardDesignMid({
    required this.pageController,
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
