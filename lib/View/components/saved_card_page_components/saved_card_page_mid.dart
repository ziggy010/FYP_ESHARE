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
              if (snapshot.connectionState == ConnectionState.done) {
                return ListView.builder(
                  itemCount: _getSavedCardDetailsModel.savedCards.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          SavedCardDetail.id,
                          parameters: {
                            'docId': _getSavedCardDetailsModel
                                .savedCards[index].keys.first,
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
                                    documentId: _getSavedCardDetailsModel
                                        .savedCards[index].keys.first,
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
                                    documentId: _getSavedCardDetailsModel
                                        .savedCards[index].keys.first,
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'poppins',
                                      fontSize: 14.sp,
                                    ),
                                    keyValue: 'Full Name',
                                    skeletonWidget: Skeleton(
                                      height: 10,
                                      width: 120,
                                      padding: 5,
                                    ),
                                  ),
                                  GetSavedCardInformationModel(
                                    documentId: _getSavedCardDetailsModel
                                        .savedCards[index].keys.first,
                                    textStyle: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontFamily: 'poppins',
                                      fontSize: 10.sp,
                                    ),
                                    keyValue: 'Profession',
                                    skeletonWidget: Skeleton(
                                      height: 7,
                                      width: 90,
                                      padding: 5,
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
              } else {
                return const Center(
                  child: SpinKitSpinningLines(
                    color: Colors.white,
                    size: 50.0,
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
