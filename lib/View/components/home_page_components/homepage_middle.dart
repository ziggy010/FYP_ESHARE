import 'package:card_swiper/card_swiper.dart';
import 'package:e_share/Controller/my_visiting_card_controller/visiting_card.dart';
import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/View/License_page.dart';
import 'package:e_share/View/citizenship_page.dart';
import 'package:e_share/View/components/main_components/skeleton.dart';
import 'package:e_share/constant.dart';
import 'package:e_share/Model/home_page_methods.dart';
import 'package:e_share/View/components/cards/Eshare_cards/Eshare_vertical_card.dart';
import 'package:e_share/View/my_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomePageMid extends StatefulWidget {
  const HomePageMid({super.key});

  @override
  State<HomePageMid> createState() => _HomePageMidState();
}

class _HomePageMidState extends State<HomePageMid> {
  int oldPage = 0;
  int currentPage = 0;
  bool get reverseSwipe =>
      oldPage == 0 && currentPage == _homePageText.swiperContent.length - 1;
  bool get normalSwipe {
    return (oldPage < currentPage && !reverseSwipe) ||
        (oldPage == _homePageText.swiperContent.length - 1 && currentPage == 0);
  }

  bool get abnormalSwipe {
    return oldPage > currentPage || reverseSwipe;
  }
  //referencing class having methods.

  HomePageText _homePageText = HomePageText();

  SwiperController _mySwipperController = SwiperController();

  final MyVistingCardController _cardController =
      Get.put(MyVistingCardController());

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 30.h,
      ),
      child: Column(
        children: [
          Container(
            height: 50.h,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _homePageText.homeTitle.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: 24.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _homePageText.homeTitle[index][0],
                        style: TextStyle(
                          color: _homePageText.homeTitle[index][1]
                              ? Colors.white
                              : kGreyColor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.4,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 2.h,
                        width: 50.w,
                        color: _homePageText.homeTitle[index][1]
                            ? const Color(0xFF7B66FF)
                            : Colors.transparent,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Container(
              height: 453.h,
              child: Swiper(
                onTap: (value) {
                  if (value == 0) {
                    Get.toNamed(MyDetail.id);
                  } else if (value == 1) {
                    Get.toNamed(CitizenshipPage.id);
                  } else {
                    Get.toNamed(MyLicensePage.id);
                  }
                },
                controller: _mySwipperController,
                itemCount: 3,
                layout: SwiperLayout.STACK,
                itemHeight: 400.h,
                itemWidth: 250.w,
                axisDirection: AxisDirection.right,
                itemBuilder: (context, index) {
                  return FutureBuilder(
                      future: GetCurrentUserModel.getCurrentUserId(),
                      builder: (context, snapshot) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(18.r),
                          child: _cardController.getVerticalCard()[index],
                        );
                      });
                },
                pagination: SwiperPagination(
                  margin: EdgeInsets.only(
                    left: 15.w,
                  ),
                  builder: const DotSwiperPaginationBuilder(
                    activeColor: Color(0xFF5D5FEF),
                    color: Color(0x305D5FEF),
                  ),
                ),
                onIndexChanged: ((value) {
                  oldPage = currentPage;
                  currentPage = value;
                  if (normalSwipe) {
                    setState(() {
                      final first = _homePageText.homeTitle.removeAt(0);
                      _homePageText.homeTitle.add(first);
                    });
                  } else if (abnormalSwipe) {
                    setState(() {
                      final last = _homePageText.homeTitle.removeLast();
                      _homePageText.homeTitle.insert(0, last);
                    });
                  }
                  setState(() {
                    _homePageText.onSwiperIndexChange();
                  });
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
