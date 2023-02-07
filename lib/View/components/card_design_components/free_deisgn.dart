import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:e_share/Controller/my_visiting_card_controller/visiting_card.dart';
import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/Model/card_design_model.dart';
import 'package:e_share/View/components/cards/Eshare_card2/Eshare2_horizontal.dart';
import 'package:e_share/View/components/cards/Eshare_card3/Eshare3_horizontal.dart';
import 'package:e_share/View/components/cards/Eshare_card4/Eshare_4_horizontal.dart';
import 'package:e_share/View/components/cards/Eshare_cards/Eshare_horizontal_card.dart';
import 'package:e_share/View/my_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'card_container.dart';

class FreeDesign extends StatelessWidget {
  final MyVistingCardController _cardController =
      Get.put(MyVistingCardController());

  final _cardDesignModel = CardDesignModel();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: ListView(
        children: [
          Column(
            children: [
              CardContainer(
                onTap: () {
                  _cardDesignModel.onTap(1, context);
                },
                content: EshareHorizontalCard(
                  name: 'Risab Tajale',
                  profession: 'App Developer',
                  email: 'tajale01@gmail.com',
                  number: '9813110577',
                  address: 'kamalbinayak,Bhaktapur',
                  website: 'risab.com.np',
                ),
              ),
              CardContainer(
                onTap: () {
                  _cardDesignModel.onTap(2, context);
                },
                content: EshareHorizontalTwo(
                  name: 'Risab Tajale',
                  profession: 'App Developer',
                  email: 'tajale01@gmail.com',
                  number: '9813110577',
                  address: 'kamalbinayak,Bhaktapur',
                  website: 'risab.com.np',
                ),
              ),
              CardContainer(
                onTap: () {
                  _cardDesignModel.onTap(3, context);
                },
                content: EshareHorizontalThree(
                  name: 'Risab Tajale',
                  profession: 'App Developer',
                  email: 'tajale01@gmail.com',
                  number: '9813110577',
                  address: 'Kamalbinayak, Bhaktapur',
                  website: 'risab.com.np',
                ),
              ),
              CardContainer(
                onTap: () {
                  _cardDesignModel.onTap(4, context);
                },
                content: EshareHorizontalFour(
                  name: 'Risab Tajale',
                  profession: 'App Developer',
                  email: 'tajale01@gmail.com',
                  number: '9813110577',
                  address: 'Kamalbinayak, Bhaktapur',
                  website: 'risab.com.np',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
