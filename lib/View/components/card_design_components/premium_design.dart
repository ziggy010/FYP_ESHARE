import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/Model/CRUD/read_documents/get_saved_cards/get_saved_card_List.dart';
import 'package:e_share/Model/card_design_model.dart';
import 'package:e_share/View/components/card_design_components/card_container.dart';
import 'package:e_share/View/components/cards/premium_card/premium_card_one.dart';
import 'package:e_share/constant.dart';
import 'package:flutter/material.dart';

class PremiumDesign extends StatelessWidget {
  final GetSavedCardListModel _getSavedCardDetailsModel =
      GetSavedCardListModel();

  final _cardDesignModel = CardDesignModel();
  final getSavedCardList = GetSavedCardListModel();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: ListView(
        children: [
          Column(
            children: [
              CardContainer(
                onTap: (() {}),
                content: PremiumCardOne(
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
              ),

              // CardContainer(),
              // CardContainer(),
            ],
          ),
        ],
      ),
    );
  }
}
