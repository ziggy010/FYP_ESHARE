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
    EshareHorizontalCard(),
    EshareHorizontalTwo(),
    EshareHorizontalThree(),
    EshareHorizontalFour(),
  ];
}
