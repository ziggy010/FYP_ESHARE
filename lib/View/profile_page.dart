import 'dart:async';
import 'dart:math';

import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/Qr_scan_page.dart';
import 'package:e_share/View/card_design_page.dart';
import 'package:e_share/View/components/profile_components/profilePageMid.dart';
import 'package:e_share/View/components/profile_components/profile_bottom.dart';
import 'package:e_share/View/components/profile_components/profile_mid.dart';
import 'package:e_share/View/components/profile_components/profile_top.dart';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  static const String id = '/profilePage';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
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
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kNavbarColor,
        title: Text(
          'Profile',
          style: kAppBar,
        ),
      ),
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: EdgeInsets.all(24.0.sm),
        child: SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-0.1, 0),
            end: Offset.zero,
          ).animate(
            _animationController,
          ),
          child: FadeTransition(
            opacity: _animationController,
            child: Column(
              children: const [
                ProfileTop(),
                ProfilePageMid(),
                ProfileBottom(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
