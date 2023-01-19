import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/Qr_scan_page.dart';
import 'package:e_share/View/components/main_components/My_fab.dart';
import 'package:e_share/View/components/main_components/bottom_navbar.dart';
import 'package:e_share/View/components/main_components/option_box.dart';
import 'package:e_share/View/components/saved_card_page_components/saved_card_page_mid.dart';
import 'package:e_share/View/components/saved_card_page_components/saved_card_page_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SavedCardsPage extends StatelessWidget {
  static const String id = '/SavedCardsPage';

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kNavbarColor,
          title: Text(
            'Saved Cards',
            style: kAppBar,
          ),
        ),
        backgroundColor: kBackgroundColor,
        body: Padding(
          padding: EdgeInsets.all(24.0.sm),
          child: Column(
            children: [
              SavedCardPageTop(
                textEditingController: _textEditingController,
              ),
              SavedCardPageMid(),
            ],
          ),
        ),
        bottomNavigationBar: MyBottomNavBar(),
        floatingActionButton: Container(
          height: 72.h,
          width: 72.w,
          child: FloatingActionButton(
            foregroundColor: Colors.transparent,
            enableFeedback: false,
            splashColor: Colors.transparent,
            backgroundColor: kSelectedColor,
            onPressed: () {
              // Get.toNamed(QrScanPage.id);
              FocusScope.of(context).nextFocus();
            },
            child: const Center(
                child: Icon(
              Icons.search_outlined,
              color: Colors.white,
            )),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
