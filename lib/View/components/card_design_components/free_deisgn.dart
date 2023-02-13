import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:e_share/Controller/card_details_controller/card_details_controller.dart';
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
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'card_container.dart';

class FreeDesign extends StatelessWidget {
  final MyVistingCardController _cardController =
      Get.put(MyVistingCardController());

  final CardDetailsController _cardDetailsController =
      Get.put(CardDetailsController());

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
                content: FutureBuilder(
                  future: GetCurrentUserModel.getCurrentUserId(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    var docId = GetCurrentUserModel.currentDocId;
                    return EshareHorizontalCard(
                      name: GetCurrentUserModel.name,
                      profession: GetCurrentUserModel.profession,
                      email: 'tajale01@gmail.com',
                      number: '9813110577',
                      website: 'risab.com.np',
                      address: 'kamalbinayak, Bhaktapur',
                    );
                  },
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
