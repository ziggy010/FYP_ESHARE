import 'dart:ui';

import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/Model/CRUD/read_documents/get_saved_cards/get_saved_card_List.dart';
import 'package:e_share/View/components/card_design_components/card_container.dart';
import 'package:e_share/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../cards/Eshare_card3/Eshare3_horizontal.dart';

class PremiumDesign extends StatelessWidget {
  final GetSavedCardListModel _getSavedCardDetailsModel =
      GetSavedCardListModel();

  @override
  Widget build(BuildContext context) {
    print(_getSavedCardDetailsModel.savedCardList.length);
    return Container(
      color: Colors.transparent,
      child: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  CardContainer(
                    onTap: (() {}),
                    content: EshareHorizontalThree(
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
                  Container(
                    height: 190.h,
                    width: double.infinity,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                      child: Container(
                        child: Center(
                          child: Text(
                            'Unlock this card\n by saving 2 cards.',
                            style: TextStyle(
                              color: kGoldenColor2,
                              fontFamily: 'poppins',
                              fontSize: 20.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
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
