import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_card_details.dart';
import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/View/components/cards/Eshare_card2/Eshare2_horizontal.dart';
import 'package:e_share/View/components/cards/Eshare_card2/Eshare2_vertical.dart';
import 'package:e_share/View/components/cards/Eshare_card3/Eshare3_horizontal.dart';
import 'package:e_share/View/components/cards/Eshare_card3/Eshare3_vertical.dart';
import 'package:e_share/View/components/cards/Eshare_card4/Eshare4_vertical.dart';
import 'package:e_share/View/components/cards/Eshare_card4/Eshare_4_horizontal.dart';
import 'package:e_share/View/components/cards/Eshare_cards/Eshare_horizontal_card.dart';
import 'package:e_share/View/components/cards/Eshare_cards/Eshare_vertical_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

import '../../constant.dart';

class MyVistingCardController extends GetxController {
  @override
  Widget getHorizontalCard() {
    switch (GetCurrentUserModel.cardDesign) {
      case 1:
        return EshareHorizontalCard();

      case 2:
        return EshareHorizontalTwo();

      case 3:
        return EshareHorizontalThree();

      case 4:
        return EshareHorizontalFour();

      default:
        return EshareHorizontalCard();
    }
  }

  List swiperContentOne = [
    EshareVerticalCard(),
    Container(
      color: kContainerColor,
    ),
    Container(
      color: kContainerColor,
    ),
  ].obs;

  List swiperContentTwo = [
    EshareVerticalTwo(),
    Container(
      color: kContainerColor,
    ),
    Container(
      color: kContainerColor,
    ),
  ].obs;

  List swiperContentThree = [
    EshareVerticalThree(),
    Container(
      color: kContainerColor,
    ),
    Container(
      color: kContainerColor,
    ),
  ].obs;

  List swiperContentFour = [
    EshareVerticalFour(),
    Container(
      color: kContainerColor,
    ),
    Container(
      color: kContainerColor,
    ),
  ].obs;

  List getVerticalCard() {
    switch (GetCurrentUserModel.cardDesign) {
      case 1:
        return swiperContentOne;

      case 2:
        return swiperContentTwo;

      case 3:
        return swiperContentThree;

      case 4:
        return swiperContentFour;

      default:
        return swiperContentOne;
    }
  }
}
