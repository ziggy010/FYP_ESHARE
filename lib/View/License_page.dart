import 'dart:async';

import 'package:e_share/constant.dart';
import 'package:e_share/View/components/license_page_components/license_mid.dart';
import 'package:e_share/View/components/license_page_components/license_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyLicensePage extends StatefulWidget {
  static const String id = '/licensePage';

  @override
  State<MyLicensePage> createState() => _MyLicensePageState();
}

class _MyLicensePageState extends State<MyLicensePage>
    with TickerProviderStateMixin {
  final _pageController = PageController();
  late AnimationController _animationController1,
      _animationController2,
      _animationController3;
  late Animation _animation1, _animation2, _animation3;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

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

    Timer(const Duration(milliseconds: 100), () {
      _animationController3.forward();
    });
  }

  @override
  void dispose() {
    _animationController1.dispose();
    _animationController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kNavbarColor,
          title: Text(
            'License Card',
            style: kAppBar,
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 24.w,
                left: 24.h,
                right: 24.h,
              ),
              child: LicenseTop(
                pageController: _pageController,
                animation1: _animation1,
                animation2: _animation2,
                animationController1: _animationController1,
                animationController2: _animationController2,
                animationController3: _animationController3,
              ),
            ),
            LicenseMid(
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
