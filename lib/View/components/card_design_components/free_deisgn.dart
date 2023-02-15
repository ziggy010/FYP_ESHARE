import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_share/Controller/my_visiting_card_controller/visiting_card.dart';
import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_card_details.dart';
import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/constant.dart';
import 'package:e_share/Model/card_design_model.dart';
import 'package:e_share/View/components/cards/Eshare_card2/Eshare2_horizontal.dart';
import 'package:e_share/View/components/cards/Eshare_card3/Eshare3_horizontal.dart';
import 'package:e_share/View/components/cards/Eshare_card4/Eshare_4_horizontal.dart';
import 'package:e_share/View/components/cards/Eshare_cards/Eshare_horizontal_card.dart';
import 'package:e_share/View/my_detail_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                content: EshareHorizontalCard(),
              ),
              CardContainer(
                onTap: () {
                  _cardDesignModel.onTap(2, context);
                },
                content: EshareHorizontalTwo(),
              ),
              CardContainer(
                onTap: () {
                  _cardDesignModel.onTap(3, context);
                },
                content: EshareHorizontalThree(),
              ),
              CardContainer(
                onTap: () {
                  _cardDesignModel.onTap(4, context);
                },
                content: EshareHorizontalFour(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
