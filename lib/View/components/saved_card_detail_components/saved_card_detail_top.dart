import 'package:e_share/Model/CRUD/read_documents/get_saved_cards/get_saved_card_List.dart';
import 'package:e_share/Model/CRUD/read_documents/get_saved_cards/get_saved_card_information.dart';
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
        ),
        professionWidget: GetSavedCardInformationModel(
          documentId: Get.parameters['docId'].toString(),
          textStyle: basicTextStyle(font: 'poppins', fontSize: 12),
          keyValue: 'Profession',
        ),
        addressWidget: GetSavedCardInformationModel(
          documentId: Get.parameters['docId'].toString(),
          textStyle: basicTextStyle(font: 'poppins', fontSize: 10),
          keyValue: 'Address',
        ),
        phoneNumberWidget: GetSavedCardInformationModel(
          documentId: Get.parameters['docId'].toString(),
          textStyle: basicTextStyle(font: 'poppins', fontSize: 10),
          keyValue: 'Number',
        ),
        emailWidget: GetSavedCardInformationModel(
          documentId: Get.parameters['docId'].toString(),
          textStyle: basicTextStyle(font: 'poppins', fontSize: 10),
          keyValue: 'Email',
        ),
        websiteWidget: GetSavedCardInformationModel(
          documentId: Get.parameters['docId'].toString(),
          textStyle: basicTextStyle(font: 'poppins', fontSize: 10),
          keyValue: 'Website',
        ),
      ),
    );
  }
}
