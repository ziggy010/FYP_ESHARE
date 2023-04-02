import 'dart:async';

import 'package:e_share/constant.dart';
import 'package:e_share/View/components/card_design_components/card_design_mid.dart';
import 'package:e_share/View/components/card_design_components/card_design_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardDesignPage extends StatefulWidget {
  const CardDesignPage({super.key});

  static const String id = '/cardDesignPage';

  @override
  State<CardDesignPage> createState() => _CardDesignPageState();
}

class _CardDesignPageState extends State<CardDesignPage>
    with TickerProviderStateMixin {
  // page controller for the top and middle section of the page
  final _pageController = PageController();

  // animation controllers for the different card designs
  late AnimationController _animationController1,
      _animationController2,
      _animationController3;

  // animations for the different card designs
  late Animation _animation1, _animation2, _animation3;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // initialize animation controllers
    _animationController1 = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 600,
      ),
    );

    _animationController2 = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 600,
      ),
    );

    _animationController3 = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 400,
      ),
    );

    // initialize animations
    _animation1 = ColorTween(
      begin: kSelectedColor,
      end: null,
    ).animate(_animationController1)
      ..addListener(() {
        setState(() {});
      });

    _animation2 = ColorTween(
      begin: null,
      end: kSelectedColor,
    ).animate(_animationController2)
      ..addListener(() {
        setState(() {});
      });

    _animation3 = CurvedAnimation(
      parent: _animationController3,
      curve: Curves.easeInOut,
    );

    // start animation 3 after a delay of 100ms
    Timer(const Duration(milliseconds: 100), () {
      _animationController3.forward();
    });
  }

  @override
  void dispose() {
    // dispose animation controllers
    _animationController1.dispose();
    _animationController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kNavbarColor,
        title: Text(
          'Card Designs',
          style: kAppBar,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          right: 24.0.h,
          left: 24.h,
          top: 24.w,
        ),
        child: Column(
          children: [
            // top section of the page
            CardDesignTop(
              pageController: _pageController,
              animation1: _animation1,
              animation2: _animation2,
              animationController1: _animationController1,
              animationController2: _animationController2,
              animationController3: _animationController3,
            ),

            // middle section of the page
            CardDesignMid(
              pageController: _pageController,
              animationController1: _animationController1,
              animationController2: _animationController2,
            ),
          ],
        ),
      ),
    );
  }
}
