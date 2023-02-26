import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/View/components/cards/Eshare_card2/Eshare2_horizontal.dart';
import 'package:e_share/View/components/cards/Eshare_card3/Eshare3_horizontal.dart';
import 'package:e_share/View/components/cards/Eshare_card4/Eshare_4_horizontal.dart';
import 'package:e_share/View/components/cards/Eshare_cards/Eshare_horizontal_card.dart';
import 'package:e_share/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUsModel {
  List<Widget> cards = [
    EshareHorizontalCard(),
    EshareHorizontalTwo(),
    EshareHorizontalThree(
      fullNameWidget: Text(
        GetCurrentUserModel.name,
        style: basicTextStyle(font: 'lobster', fontSize: 24),
      ),
      professionWidget: Text(
        GetCurrentUserModel.profession,
        style: basicTextStyle(font: 'poppins', fontSize: 12),
      ),
      addressWidget: Text(
        GetCurrentUserModel.address,
        style: basicTextStyle(font: 'poppins', fontSize: 10),
      ),
      phoneNumberWidget: Text(
        GetCurrentUserModel.number,
        style: basicTextStyle(font: 'poppins', fontSize: 10),
      ),
      emailWidget: Text(
        GetCurrentUserModel.email,
        style: basicTextStyle(font: 'poppins', fontSize: 10),
      ),
      websiteWidget: Text(
        GetCurrentUserModel.website,
        style: basicTextStyle(font: 'poppins', fontSize: 10),
      ),
    ),
    EshareHorizontalFour(),
  ];
}
