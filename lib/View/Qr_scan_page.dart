import 'dart:async';

import 'package:e_share/constant.dart';
import 'package:e_share/View/components/Qr_scan_components/Qr_scan_page_mid.dart';
import 'package:e_share/View/components/Qr_scan_components/Qr_scan_page_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QrScanPage extends StatefulWidget {
  const QrScanPage({super.key});

  static const String id = '/QrScanPage';

  @override
  State<QrScanPage> createState() => _QrScanPageState();
}

class _QrScanPageState extends State<QrScanPage> with TickerProviderStateMixin {
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
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kNavbarColor,
        title: Text(
          'QR Scan',
          style: kAppBar,
        ),
      ),
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: EdgeInsets.all(
          24.sm,
        ),
        child: Column(
          children: [
            QrScanPageTop(
              pageController: _pageController,
              animation1: _animation1,
              animation2: _animation2,
              animationController1: _animationController1,
              animationController2: _animationController2,
              animationController3: _animationController3,
            ),
            QrScanPageMid(
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
