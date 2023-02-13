import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_card_details.dart';
import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/View/components/cards/Eshare_card2/Eshare2_horizontal.dart';
import 'package:e_share/View/components/cards/Eshare_card3/Eshare3_horizontal.dart';
import 'package:e_share/View/components/cards/Eshare_card4/Eshare_4_horizontal.dart';
import 'package:e_share/View/components/cards/Eshare_cards/Eshare_horizontal_card.dart';
import 'package:e_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUsModel {
  List<Widget> cards = [
    FutureBuilder(
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
            height: 25.h,
            width: 70.w,
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
    ),
    EshareHorizontalTwo(
      name: 'Risab Tajale',
      profession: 'App Developer',
      email: 'tajale01@gmail.com',
      number: '9813110577',
      address: 'kamalbinayak,Bhaktapur',
      website: 'risab.com.np',
    ),
    EshareHorizontalThree(
      name: 'Risab Tajale',
      profession: 'App Developer',
      email: 'tajale01@gmail.com',
      number: '9813110577',
      address: 'kamalbinayak,Bhaktapur',
      website: 'risab.com.np',
    ),
    EshareHorizontalFour(
      name: 'Risab Tajale',
      profession: 'App Developer',
      email: 'tajale01@gmail.com',
      number: '9813110577',
      address: 'kamalbinayak,Bhaktapur',
      website: 'risab.com.np',
    ),
  ];
}
