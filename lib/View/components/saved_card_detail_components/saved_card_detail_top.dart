import 'package:e_share/Model/CRUD/read_documents/get_saved_cards/get_saved_card_List.dart';
import 'package:e_share/Model/CRUD/read_documents/get_saved_cards/get_saved_card_information.dart';
import 'package:e_share/View/components/main_components/skeleton.dart';
import 'package:e_share/constant.dart';
import 'package:e_share/View/components/cards/Eshare_card3/Eshare3_horizontal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SavedCardDetailTop extends StatelessWidget {
  final GetSavedCardListModel _getSavedCardListModel = GetSavedCardListModel();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 192.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kContainerColor,
        borderRadius: BorderRadius.circular(
          20.r,
        ),
      ),
      child: EshareHorizontalThree(
        fullNameWidget: GetSavedCardInformationModel(
          documentId: Get.parameters['docId'].toString(),
          textStyle: basicTextStyle(fontSize: 24, font: 'lobster'),
          keyValue: 'Full Name',
          skeletonWidget: Skeleton(
            height: 10,
            width: 100,
            padding: 5,
          ),
        ),
        professionWidget: GetSavedCardInformationModel(
          documentId: Get.parameters['docId'].toString(),
          textStyle: basicTextStyle(font: 'poppins', fontSize: 12),
          keyValue: 'Profession',
          skeletonWidget: Skeleton(
            height: 13,
            width: 110,
            padding: 5,
          ),
        ),
        addressWidget: GetSavedCardInformationModel(
          documentId: Get.parameters['docId'].toString(),
          textStyle: basicTextStyle(font: 'poppins', fontSize: 10),
          keyValue: 'Address',
          skeletonWidget: Skeleton(
            height: 8,
            width: 80,
            padding: 5,
          ),
        ),
        phoneNumberWidget: GetSavedCardInformationModel(
          documentId: Get.parameters['docId'].toString(),
          textStyle: basicTextStyle(font: 'poppins', fontSize: 10),
          keyValue: 'Number',
          skeletonWidget: Skeleton(
            height: 6,
            width: 60,
            padding: 5,
          ),
        ),
        emailWidget: GetSavedCardInformationModel(
          documentId: Get.parameters['docId'].toString(),
          textStyle: basicTextStyle(font: 'poppins', fontSize: 10),
          keyValue: 'Email',
          skeletonWidget: Skeleton(
            height: 6,
            width: 60,
            padding: 5,
          ),
        ),
        websiteWidget: GetSavedCardInformationModel(
          documentId: Get.parameters['docId'].toString(),
          textStyle: basicTextStyle(font: 'poppins', fontSize: 10),
          keyValue: 'Website',
          skeletonWidget: Skeleton(
            height: 6,
            width: 60,
            padding: 5,
          ),
        ),
      ),
    );
  }
}
