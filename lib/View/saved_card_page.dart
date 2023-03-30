import 'package:e_share/Controller/saved_card_page_controller/saved_card_page_controller.dart';
import 'package:e_share/View/components/saved_card_page_components/saved_card_page_mid.dart';
import 'package:e_share/constant.dart';
import 'package:e_share/View/components/main_components/bottom_navbar.dart';
import 'package:e_share/View/components/saved_card_page_components/saved_card_page_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SavedCardsPage extends StatefulWidget {
  static const String id = '/SavedCardsPage';

  @override
  State<SavedCardsPage> createState() => _SavedCardsPageState();
}

class _SavedCardsPageState extends State<SavedCardsPage>
    with TickerProviderStateMixin {
  TextEditingController _textEditingController = TextEditingController();

  late AnimationController _animationController;

  late Animation _animation;

  final _savedCardPageController = Get.put(SavedCardPageController());

  @override
  void initState() {
    _savedCardPageController.getSavedCardDetails();
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

    _animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
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
          padding: EdgeInsets.only(
            top: 24.w,
            left: 24.h,
            right: 24.h,
          ),
          child: Column(
            children: [
              SavedCardPageTop(
                textEditingController: _textEditingController,
                animationController: _animationController,
              ),
              // TryMid(),
              SavedCardPageMid(
                animationController: _animationController,
              ),
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
