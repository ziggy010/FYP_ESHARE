import 'dart:ui';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/Model/CRUD/read_documents/get_saved_cards/get_saved_card_List.dart';
import 'package:e_share/Model/CRUD/read_documents/get_saved_cards/get_saved_card_information.dart';
import 'package:e_share/Model/card_design_model.dart';
import 'package:e_share/View/components/main_components/my_snackbar.dart';
import 'package:e_share/View/components/main_components/skeleton.dart';
import 'package:e_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class PremiumCardOne extends StatelessWidget {
  int cardNo = 3;

  final Widget fullNameWidget;
  final Widget professionWidget;
  final Widget addressWidget;
  final Widget phoneNumberWidget;
  final Widget emailWidget;
  final Widget websiteWidget;

  PremiumCardOne({
    required this.fullNameWidget,
    required this.professionWidget,
    required this.addressWidget,
    required this.phoneNumberWidget,
    required this.emailWidget,
    required this.websiteWidget,
  });

  final getSavedCardList = GetSavedCardListModel();
  final _cardDesignModel = CardDesignModel();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getSavedCardList.getSavedCardDetails(),
      // initialData: InitialData,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (getSavedCardList.savedCardList.length < 1) {
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: kContainerColor,
                    borderRadius: BorderRadius.circular(12.r),
                    image: const DecorationImage(
                      image: AssetImage(
                        'images/Eshare3b.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 20.w,
                      right: 13.h,
                      bottom: 8.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            fullNameWidget,
                            professionWidget,
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CardRowDetail(
                                textWidget: addressWidget,
                                icon: Icons.location_on_outlined,
                              ),
                              CardRowDetail(
                                textWidget: phoneNumberWidget,
                                icon: Icons.phone_outlined,
                              ),
                              CardRowDetail(
                                textWidget: emailWidget,
                                icon: Icons.email_outlined,
                              ),
                              CardRowDetail(
                                textWidget: websiteWidget,
                                icon: Icons.language_outlined,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    MySnackbar.showSnackBar(
                      context,
                      'Card Locked!',
                      'Requirement not satisfied.',
                      ContentType.failure,
                    );
                  },
                  child: BlurryContainer(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.lock,
                            color: kGoldenColor2,
                            size: 40.sp,
                          ),
                          Text(
                            'You need to save 2 cards to unlock this card',
                            style: TextStyle(
                              color: kGoldenColor2,
                              fontFamily: 'poppins',
                              fontSize: 17.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    blur: 5,
                    width: double.infinity,
                    height: 190.h,
                    elevation: 0,
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
              ],
            );
          } else {
            return GestureDetector(
              onTap: () {
                _cardDesignModel.onTap(3, context);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: kContainerColor,
                  borderRadius: BorderRadius.circular(12.r),
                  image: const DecorationImage(
                    image: AssetImage(
                      'images/Eshare3b.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 20.w,
                    right: 13.h,
                    bottom: 8.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          fullNameWidget,
                          professionWidget,
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CardRowDetail(
                              textWidget: addressWidget,
                              icon: Icons.location_on_outlined,
                            ),
                            CardRowDetail(
                              textWidget: phoneNumberWidget,
                              icon: Icons.phone_outlined,
                            ),
                            CardRowDetail(
                              textWidget: emailWidget,
                              icon: Icons.email_outlined,
                            ),
                            CardRowDetail(
                              textWidget: websiteWidget,
                              icon: Icons.language_outlined,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        } else {
          return Skeleton(height: 190, width: double.infinity);
        }
      },
    );
  }
}

class CardRowDetail extends StatelessWidget {
  final Widget textWidget;
  final IconData icon;

  CardRowDetail({
    required this.textWidget,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        textWidget,
        SizedBox(
          width: 9.h,
        ),
        Icon(
          icon,
          color: kGoldenColor2,
          size: 16.sm,
        ),
      ],
    );
  }
}
