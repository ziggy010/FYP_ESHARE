import 'package:e_share/Controller/My_bottom_navbar_controller/bottom_navbar_controller.dart';
import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/home_page.dart';
import 'package:e_share/View/saved_card_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar>
    with TickerProviderStateMixin {
  final BottomNavbarController _bottomNavbarController =
      Get.put(BottomNavbarController());

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: kBottomNavBarColor,
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: Container(
        height: 65.h,
        child: Padding(
          padding: EdgeInsets.only(
            left: 60.w,
            right: 60.w,
            top: 20.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Get.offAllNamed(HomePage.id);
                  _bottomNavbarController.changeHomeIcon('icons/home.png');
                  _bottomNavbarController.changeSavedIcon(
                    'icons/saved_card.png',
                  );
                },
                child: Column(
                  children: [
                    Obx(() {
                      return Image.asset(
                        _bottomNavbarController.homeIcon.toString(),
                      );
                    }),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'My Cards',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 7.sp,
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Get.offAndToNamed(SavedCardsPage.id);
                  Get.offAllNamed(SavedCardsPage.id);
                  _bottomNavbarController.changeHomeIcon(
                    'icons/home_not_selected.png',
                  );
                  _bottomNavbarController.changeSavedIcon(
                    'icons/saved_card.png',
                  );
                },
                child: Column(
                  children: [
                    Obx(() {
                      return Image.asset(
                        _bottomNavbarController.savedIcon.toString(),
                      );
                    }),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'Saved Cards',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 7.sp,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
