import 'dart:async';

import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/components/saved_card_detail_components/saved_card_detail_bottom.dart';
import 'package:e_share/View/components/saved_card_detail_components/saved_card_detail_mid.dart';
import 'package:e_share/View/components/saved_card_detail_components/saved_card_detail_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedCardDetail extends StatefulWidget {
  const SavedCardDetail({super.key});

  static const String id = '/SavedCardDetail';

  @override
  State<SavedCardDetail> createState() => _SavedCardDetailState();
}

class _SavedCardDetailState extends State<SavedCardDetail>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 400,
      ),
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    Timer(
      Duration(milliseconds: 50),
      () {
        _animationController.forward();
      },
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kNavbarColor,
        title: Text(
          'Risab Tajale',
          style: kAppBar,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 32.w,
          left: 24.h,
          right: 24.h,
        ),
        child: Column(
          children: [
            SavedCardDetailTop(),
            SavedCardDetailMid(
              animation: _animation,
              animationController: _animationController,
            ),
            SavedCardDetailBottom(
              animation: _animation,
              animationController: _animationController,
            )
          ],
        ),
      ),
    );
  }
}
