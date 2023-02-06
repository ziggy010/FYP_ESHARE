import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/components/cards/Eshare_card2/Eshare2_vertical.dart';
import 'package:e_share/View/components/cards/Eshare_card3/Eshare3_vertical.dart';
import 'package:e_share/View/components/cards/Eshare_cards/Eshare_horizontal_card.dart';
import 'package:e_share/View/components/cards/Eshare_cards/Eshare_vertical_card.dart';
import 'package:flutter/material.dart';

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
    EshareVerticalThree(
      name: 'Risab Tajale',
      profession: 'App Developer',
      email: 'tajale01@gmail.com',
      number: '9813110577',
      website: 'risab.com.np',
      address: 'kamalbinayak, Bhaktapur',
    ),
    Container(
      color: kContainerColor,
    ),
    Container(
      color: kContainerColor,
    ),
    // EshareVerticalCard(),
    // EshareVerticalCard(),
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
