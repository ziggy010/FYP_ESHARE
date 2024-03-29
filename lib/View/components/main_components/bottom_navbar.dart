import 'package:e_share/Controller/My_bottom_navbar_controller/bottom_navbar_controller.dart';
import 'package:e_share/constant.dart';
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
      Get.put(BottomNavbarController(), permanent: true);

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
                  _bottomNavbarController.changeHomeIcon(
                    Icon(
                      Icons.home_rounded,
                      color: kSelectedColor,
                    ),
                  );
                  _bottomNavbarController.changeSavedIcon(
                    Icon(
                      Icons.bookmark_border_rounded,
                      color: Colors.white30,
                    ),
                  );
                  _bottomNavbarController.changeFontColor(
                    kSelectedColor,
                    Colors.white30,
                  );
                },
                child: Column(
                  children: [
                    Obx(() {
                      return _bottomNavbarController.homeIcon.value;
                    }),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'My Cards',
                      style: TextStyle(
                        color: _bottomNavbarController.firstText.value,
                        fontSize: 8.sp,
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
                    Icon(
                      Icons.home_outlined,
                      color: Colors.white30,
                    ),
                  );
                  _bottomNavbarController.changeSavedIcon(
                    Icon(
                      Icons.bookmark_rounded,
                      color: kSelectedColor,
                    ),
                  );
                  _bottomNavbarController.changeFontColor(
                    Colors.white30,
                    kSelectedColor,
                  );
                },
                child: Column(
                  children: [
                    Obx(() {
                      return _bottomNavbarController.savedIcon.value;
                    }),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'Saved Cards',
                      style: TextStyle(
                        color: _bottomNavbarController.secondText.value,
                        fontSize: 8.sp,
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
