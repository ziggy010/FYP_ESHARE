import 'package:e_share/Controller/saved_card_page_controller/saved_card_page_controller.dart';
import 'package:e_share/Model/CRUD/read_documents/get_saved_cards/get_saved_card_details.dart';
import 'package:e_share/Model/CRUD/read_documents/get_saved_cards/get_saved_card_information.dart';
import 'package:e_share/Model/CRUD/read_documents/get_saved_cards/get_single_letter.dart';
import 'package:e_share/constant.dart';
import 'package:e_share/Model/saved_card_page_model/saved_card_list.dart';
import 'package:e_share/View/saved_card_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SavedCardPageMid extends StatelessWidget {
  final SavedCardPageController _savedCardPageController =
      Get.find<SavedCardPageController>();

  final AnimationController animationController;

  final GetSavedCardDetailsModel _getSavedCardDetailsModel =
      GetSavedCardDetailsModel();

  SavedCardPageMid({
    required this.animationController,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: 24.w,
        ),
        child: FadeTransition(
          opacity: animationController,
          child: FutureBuilder(
            future: _getSavedCardDetailsModel.getSavedCardDetails(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              return ListView.builder(
                itemCount: _getSavedCardDetailsModel.savedCardList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      print(
                        _getSavedCardDetailsModel.savedCardList[index],
                      );
                      Get.toNamed(SavedCardDetail.id);
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
                                child: GetSingleLetter(
                                  documentId: _getSavedCardDetailsModel
                                      .savedCardList[index],
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
                                GetSavedCardInformationModel(
                                  keyValue: 'FullName',
                                  documentId: _getSavedCardDetailsModel
                                      .savedCardList[index],
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'poppins',
                                    fontSize: 13.sp,
                                  ),
                                ),
                                GetSavedCardInformationModel(
                                  documentId: _getSavedCardDetailsModel
                                      .savedCardList[index],
                                  textStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                    fontSize: 10.sp,
                                  ),
                                  keyValue: 'Profession',
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
            },
          ),
        ),
      ),
    );
    // return Expanded(
    //   child: Padding(
    //     padding: EdgeInsets.only(
    //       top: 24.w,
    //     ),
    //     child: FadeTransition(
    //       opacity: animationController,
    //       child: FutureBuilder(
    //         future: _savedCardPageController.getAllSavedCard(),
    //         builder: (BuildContext context, AsyncSnapshot snapshot) {
    //           return ListView.builder(
    //             itemCount: _savedCardPageController.foundSavedCard.value.length,
    //             itemBuilder: (context, index) {
    //               return GestureDetector(
    //                 onTap: () {
    //                   Get.toNamed(
    //                     SavedCardDetail.id,
    //                     parameters: {
    //                       'name':
    //                           '${_savedCardPageController.foundSavedCard.value[index].name}',
    //                     },
    //                   );
    //                 },
    //                 child: Padding(
    //                   padding: EdgeInsets.only(
    //                     bottom: 16.h,
    //                   ),
    //                   child: Container(
    //                     height: 50.h,
    //                     width: double.infinity,
    //                     child: Row(
    //                       children: [
    //                         CircleAvatar(
    //                           backgroundColor: kSelectedPrimary,
    //                           radius: 22.r,
    //                           child: Center(
    //                             child: Text(
    //                               // 'r',
    //                               _savedCardPageController
    //                                   .foundSavedCard.value[index].name[0],
    //                               style: TextStyle(
    //                                 color: Colors.white,
    //                                 fontFamily: 'poppins',
    //                                 fontSize: 18.sp,
    //                               ),
    //                             ),
    //                           ),
    //                         ),
    //                         SizedBox(
    //                           width: 20.h,
    //                         ),
    //                         Column(
    //                           crossAxisAlignment: CrossAxisAlignment.start,
    //                           mainAxisAlignment: MainAxisAlignment.center,
    //                           children: [
    //                             Text(
    //                               // 'R',
    //                               _savedCardPageController
    //                                   .foundSavedCard.value[index].name,
    //                               style: TextStyle(
    //                                 color: Colors.white,
    //                                 fontFamily: 'poppins',
    //                                 fontSize: 14.sp,
    //                               ),
    //                             ),
    //                             Text(
    //                               'company',
    //                               style: TextStyle(
    //                                 color: Colors.white.withOpacity(0.6),
    //                                 fontSize: 10.sp,
    //                               ),
    //                             ),
    //                           ],
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               );
    //             },
    //           );
    //         },
    //       ),
    //     ),
    //   ),
    // );
  }
}
