import 'package:e_share/Controller/saved_card_page_controller/saved_card_page_controller.dart';
import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/Model/saved_card_page_model/saved_card_list.dart';
import 'package:e_share/View/saved_card_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SavedCardPageMid extends StatelessWidget {
  final SavedCardPageController _savedCardPageController =
      Get.find<SavedCardPageController>();

  final AnimationController animationController;

  SavedCardPageMid({
    required this.animationController,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Expanded(
        child: Padding(
          padding: EdgeInsets.only(
            top: 24.w,
          ),
          child: FadeTransition(
            opacity: animationController,
            child: ListView.builder(
              itemCount: _savedCardPageController.foundSavedCard.value.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.toNamed(
                      SavedCardDetail.id,
                      parameters: {
                        'name':
                            '${_savedCardPageController.foundSavedCard.value[index].name}',
                      },
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: 16.h,
                    ),
                    child: Container(
                      height: 40.h,
                      width: double.infinity,
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: kSelectedPrimary,
                            radius: 20.r,
                            child: Center(
                              child: Text(
                                _savedCardPageController
                                    .foundSavedCard.value[index].name[0],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'poppins',
                                  fontSize: 18.sp,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 12.h,
                          ),
                          Text(
                            _savedCardPageController
                                .foundSavedCard.value[index].name,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'poppins',
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      );
    });
  }
}
