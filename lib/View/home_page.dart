import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/home_page_components/homepage_middle.dart';
import 'components/home_page_components/homepage_top.dart';
import 'components/main_components/My_fab.dart';
import 'components/main_components/bottom_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String id = '/Homepage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.only(
            top: 24.h,
            // left: 24.w,
          ),
          child: Column(
            children: [
              HomePageTop(),
              HomePageMid(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(),
      floatingActionButton: MyFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
