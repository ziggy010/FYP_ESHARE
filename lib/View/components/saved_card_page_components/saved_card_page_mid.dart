import 'package:e_share/Controller/saved_card_page_controller/saved_card_page_controller.dart';
import 'package:e_share/Model/CRUD/read_documents/get_saved_cards/get_saved_card_List.dart';
import 'package:e_share/Model/CRUD/read_documents/get_saved_cards/get_saved_card_first_letter.dart';
import 'package:e_share/Model/CRUD/read_documents/get_saved_cards/get_saved_card_information.dart';
import 'package:e_share/View/components/main_components/skeleton.dart';
import 'package:e_share/constant.dart';
import 'package:e_share/View/saved_card_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class SavedCardPageMid extends StatelessWidget {
  final AnimationController animationController;

  SavedCardPageMid({
    required this.animationController,
  });

  final GetSavedCardListModel _getSavedCardDetailsModel =
      GetSavedCardListModel();

  final _savedCardPageController = Get.find<SavedCardPageController>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: 24.w,
        ),
        child: FadeTransition(
          opacity: animationController,
          child: Obx(() {
            return ListView.builder(
              itemCount: _savedCardPageController.foundCards.value.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.toNamed(
                      SavedCardDetail.id,
                      parameters: {
                        'docId': _savedCardPageController
                            .foundCards.value[index]['docId'],
                      },
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: 16.h,
                    ),
                    child: Container(
                      height: 50.h,
                      width: double.infinity,
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: kSelectedPrimary,
                            radius: 22.r,
                            child: Center(
                              child: GetSavedCardFirstLetter(
                                documentId: _savedCardPageController
                                    .foundCards.value[index]['docId'],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                _savedCardPageController.foundCards.value[index]
                                    ['Name'],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'poppins',
                                ),
                              ),
                              Text(
                                _savedCardPageController.foundCards.value[index]
                                    ['profession'],
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.4),
                                  fontFamily: 'poppins',
                                  fontSize: 9.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }),
        ),
      ),
    );
  }
}
