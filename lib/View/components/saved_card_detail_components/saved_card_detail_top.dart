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
      child: EshareHorizontalThree(),
    );
  }
}
