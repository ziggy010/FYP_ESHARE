import 'dart:async';

import 'package:e_share/Controller/my_visiting_card_controller/visiting_card.dart';
import 'package:e_share/View/components/cards/Eshare_card2/Eshare2_horizontal.dart';
import 'package:e_share/View/components/cards/Eshare_card3/Eshare3_horizontal.dart';
import 'package:e_share/View/components/cards/Eshare_card4/Eshare_4_horizontal.dart';
import 'package:e_share/View/components/cards/Eshare_cards/Eshare_horizontal_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constant.dart';

class MyDetailTop extends StatefulWidget {
  const MyDetailTop({super.key});

  @override
  State<MyDetailTop> createState() => _MyDetailTopState();
}

class _MyDetailTopState extends State<MyDetailTop>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  final MyVistingCardController _cardController =
      Get.put(MyVistingCardController());

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 500,
      ),
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    Timer(
      Duration(milliseconds: 50),
      () => _animationController.forward(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 30.h,
      ),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset(0, 0.1),
          end: Offset.zero,
        ).animate(_animationController),
        child: FadeTransition(
          opacity: _animationController,
          child: Obx(
            () {
              return Container(
                height: 190.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kContainerColor,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: _cardController.getHorizontalCard(),
              );
            },
          ),
        ),
      ),
    );
  }
}
