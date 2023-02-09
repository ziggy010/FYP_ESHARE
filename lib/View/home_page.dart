import 'package:e_share/Controller/fab_controller.dart';
import 'package:e_share/constant.dart';
import 'package:e_share/View/components/main_components/option_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
  final FabController _fabController = Get.put(FabController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: _fabController.backgroundColor.value,
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
                Stack(
                  children: [
                    HomePageMid(),
                    Positioned(
                      bottom: 0.w,
                      left: 90.h,
                      child: OptionBox(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: MyBottomNavBar(),
        floatingActionButton: MyFab(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      );
    });
  }
}
