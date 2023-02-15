import 'package:e_share/Controller/my_visiting_card_controller/visiting_card.dart';
import 'package:e_share/constant.dart';
import 'package:e_share/View/components/cards/Eshare_card2/Eshare2_vertical.dart';
import 'package:e_share/View/components/cards/Eshare_card3/Eshare3_vertical.dart';
import 'package:e_share/View/components/cards/Eshare_card4/Eshare4_vertical.dart';
import 'package:e_share/View/components/cards/Eshare_cards/Eshare_horizontal_card.dart';
import 'package:e_share/View/components/cards/Eshare_cards/Eshare_vertical_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageText {
  List homeTitle = [
    [
      'Visiting card',
      true,
    ],
    [
      'Citizenship Card',
      false,
    ],
    [
      'License',
      false,
    ],
  ];

  List swiperContent = [
    EshareVerticalThree(),
    Container(
      color: kContainerColor,
    ),
    Container(
      color: kContainerColor,
    ),
  ];

  void changeTextOrder(int getIndex) {
    if (getIndex == 0) {}
  }

  void onSwiperIndexChange() {
    for (int i = 0; i < homeTitle.length; i++) {
      homeTitle[i][1] = false;
    }
    homeTitle[0][1] = true;
  }
}
