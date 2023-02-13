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
  RxInt cardNumber = 1.obs;

  List swiperContent = [
    FutureBuilder(
      future: GetCurrentUserModel.getCurrentUserId(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        var docId = GetCurrentUserModel.currentDocId;
        return EshareVerticalCard(
          profession: GetCurrentUserCardDetails(
            height: 23.h,
            width: 80.w,
            documentId: docId,
            DataKey: 'Profession',
            textStyle: kCardTextStyle(12, kGoldenColor),
          ),
          email: 'tajale01@gmail.com',
          number: '9813110577',
          website: 'risab.com.np',
          address: 'kamalbinayak, Bhaktapur',
          nameWidget: GetCurrentUserCardDetails(
            height: 25.h,
            width: 140.w,
            DataKey: 'full name',
            documentId: GetCurrentUserModel.currentDocId,
            textStyle: kCardTextStyle(20, kGoldenColor),
          ),
        );
      },
    ),
    Container(
      color: kContainerColor,
    ),
    Container(
      color: kContainerColor,
    ),
  ].obs;

  changeCardNumber(int number) {
    cardNumber.value = number;
  }

  changeSwiperList() {
    if (cardNumber.value == 1) {
      swiperContent.removeAt(0);
      swiperContent.insert(
        0,
        FutureBuilder(
          future: GetCurrentUserModel.getCurrentUserId(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            var docId = GetCurrentUserModel.currentDocId;
            return EshareVerticalCard(
              profession: GetCurrentUserCardDetails(
                height: 25.h,
                width: 70.w,
                documentId: docId,
                DataKey: 'Profession',
                textStyle: kCardTextStyle(12, kGoldenColor),
              ),
              email: 'tajale01@gmail.com',
              number: '9813110577',
              website: 'risab.com.np',
              address: 'kamalbinayak, Bhaktapur',
              nameWidget: GetCurrentUserCardDetails(
                height: 25.h,
                width: 70.w,
                DataKey: 'full name',
                documentId: GetCurrentUserModel.currentDocId,
                textStyle: kCardTextStyle(20, kGoldenColor),
              ),
            );
          },
        ),
      );
    }
    if (cardNumber.value == 2) {
      swiperContent.removeAt(0);

      swiperContent.insert(
        0,
        EshareVerticalTwo(
          name: 'Risab Tajale',
          profession: 'App Developer',
          email: 'tajale01@gmail.com',
          number: '9813110577',
          website: 'risab.com.np',
          address: 'kamalbinayak, Bhaktapur',
        ),
      );
    }
    if (cardNumber.value == 3) {
      swiperContent.removeAt(0);

      swiperContent.insert(
        0,
        EshareVerticalThree(
          name: 'Risab Tajale',
          profession: 'App Developer',
          email: 'tajale01@gmail.com',
          number: '9813110577',
          website: 'risab.com.np',
          address: 'kamalbinayak, Bhaktapur',
        ),
      );
    }
    if (cardNumber.value == 4) {
      swiperContent.removeAt(0);

      swiperContent.insert(
        0,
        EshareVerticalFour(
          name: 'Risab Tajale',
          profession: 'App Developer',
          email: 'tajale01@gmail.com',
          number: '9813110577',
          website: 'risab.com.np',
          address: 'kamalbinayak, Bhaktapur',
        ),
      );
    }
  }

  Widget getHorizontalCard() {
    switch (cardNumber.value) {
      case 1:
        return FutureBuilder(
          future: GetCurrentUserModel.getCurrentUserId(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            var docId = GetCurrentUserModel.currentDocId;
            return EshareHorizontalCard(
              name: GetCurrentUserCardDetails(
                height: 25.h,
                width: 70.w,
                DataKey: 'full name',
                documentId: GetCurrentUserModel.currentDocId,
                textStyle: cardTextStyle(20),
              ),
              profession: GetCurrentUserCardDetails(
                height: 20.h,
                width: 50.w,
                documentId: docId,
                DataKey: 'Profession',
                textStyle: cardTextStyle(12),
              ),
              email: 'tajale01@gmail.com',
              number: '9813110577',
              website: 'risab.com.np',
              address: 'kamalbinayak, Bhaktapur',
            );
          },
        );

      case 2:
        return EshareHorizontalTwo(
          name: 'Risab Tajale',
          profession: 'App Developer',
          email: 'tajale01@gmail.com',
          number: '9813110577',
          address: 'Kamalbinayak, Bhaktapur',
          website: 'risab.com.np',
        );

      case 3:
        return EshareHorizontalThree(
          name: 'Risab Tajale',
          profession: 'App Developer',
          email: 'tajale01@gmail.com',
          number: '9813110577',
          address: 'Kamalbinayak, Bhaktapur',
          website: 'risab.com.np',
        );

      case 4:
        return EshareHorizontalFour(
          name: 'Risab Tajale',
          profession: 'App Developer',
          email: 'tajale01@gmail.com',
          number: '9813110577',
          address: 'Kamalbinayak, Bhaktapur',
          website: 'risab.com.np',
        );

      default:
        return FutureBuilder(
          future: GetCurrentUserModel.getCurrentUserId(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            var docId = GetCurrentUserModel.currentDocId;
            return EshareHorizontalCard(
              name: GetCurrentUserCardDetails(
                height: 25.h,
                width: 70.w,
                DataKey: 'full name',
                documentId: GetCurrentUserModel.currentDocId,
                textStyle: cardTextStyle(20),
              ),
              profession: GetCurrentUserCardDetails(
                height: 20.h,
                width: 50.w,
                documentId: docId,
                DataKey: 'Profession',
                textStyle: cardTextStyle(12),
              ),
              email: 'tajale01@gmail.com',
              number: '9813110577',
              website: 'risab.com.np',
              address: 'kamalbinayak, Bhaktapur',
            );
          },
        );
    }
  }
}
