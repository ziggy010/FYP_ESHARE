import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/Model/CRUD/read_documents/get_saved_cards/get_saved_card_List.dart';
import 'package:e_share/View/components/main_components/skeleton.dart';
import 'package:e_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PremiumHorizontalTwo extends StatelessWidget {
  int cardNo = 12;

  final _getSavedCardModel = GetSavedCardListModel();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getSavedCardModel.getSavedCardDetails(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (_getSavedCardModel.savedCardList.length < 4) {
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: kContainerColor,
                    borderRadius: BorderRadius.circular(
                      12.r,
                    ),
                    image: const DecorationImage(
                      image: AssetImage(
                        'images/premium1a.jpeg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 20.w,
                      left: 20.h,
                      bottom: 10.w,
                    ),
                    child: Container(
                      // color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                GetCurrentUserModel.name,
                                style: TextStyle(
                                  color: kGoldenColor2,
                                  fontFamily: 'lobster',
                                  fontSize: 23.sp,
                                  letterSpacing: 2,
                                ),
                              ),
                              Text(
                                GetCurrentUserModel.profession,
                                style: TextStyle(
                                  color: kGoldenColor2,
                                  fontFamily: 'poppins',
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Container(
                                height: 2.h,
                                width: 70.w,
                                color: kGoldenColor2,
                              )
                            ],
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 10.w,
                              ),
                              child: Container(
                                // color: Colors.blue,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CardDetailRow(
                                      text: GetCurrentUserModel.address,
                                      icon: Icons.location_on_outlined,
                                      fontSize: 10,
                                    ),
                                    CardDetailRow(
                                      text: GetCurrentUserModel.number,
                                      icon: Icons.phone_outlined,
                                      fontSize: 10,
                                    ),
                                    CardDetailRow(
                                      text: GetCurrentUserModel.email,
                                      icon: Icons.email_outlined,
                                      fontSize: 10,
                                    ),
                                    CardDetailRow(
                                      text: GetCurrentUserModel.website,
                                      icon: Icons.language_outlined,
                                      fontSize: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                BlurryContainer(
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
                          'You need to save 4 cards to unlock this card',
                          style: TextStyle(
                            color: kGoldenColor2,
                            fontFamily: 'poppins',
                            fontSize: 15.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  blur: 4,
                  width: double.infinity,
                  height: 190.h,
                  elevation: 0,
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12.r),
                )
              ],
            );
          } else {
            return Container(
              decoration: BoxDecoration(
                color: kContainerColor,
                borderRadius: BorderRadius.circular(
                  12.r,
                ),
                image: const DecorationImage(
                  image: AssetImage(
                    'images/premium1a.jpeg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 20.w,
                  left: 20.h,
                  bottom: 10.w,
                ),
                child: Container(
                  // color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            GetCurrentUserModel.name,
                            style: TextStyle(
                              color: kGoldenColor2,
                              fontFamily: 'lobster',
                              fontSize: 23.sp,
                              letterSpacing: 2,
                            ),
                          ),
                          Text(
                            GetCurrentUserModel.profession,
                            style: TextStyle(
                              color: kGoldenColor2,
                              fontFamily: 'poppins',
                              fontSize: 12.sp,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Container(
                            height: 2.h,
                            width: 70.w,
                            color: kGoldenColor2,
                          )
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 10.w,
                          ),
                          child: Container(
                            // color: Colors.blue,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CardDetailRow(
                                  text: GetCurrentUserModel.address,
                                  icon: Icons.location_on_outlined,
                                  fontSize: 10,
                                ),
                                CardDetailRow(
                                  text: GetCurrentUserModel.number,
                                  icon: Icons.phone_outlined,
                                  fontSize: 10,
                                ),
                                CardDetailRow(
                                  text: GetCurrentUserModel.email,
                                  icon: Icons.email_outlined,
                                  fontSize: 10,
                                ),
                                CardDetailRow(
                                  text: GetCurrentUserModel.website,
                                  icon: Icons.language_outlined,
                                  fontSize: 10,
                                ),
                              ],
                            ),
                          ),
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

class CardDetailRow extends StatelessWidget {
  final String text;
  final IconData icon;
  final double fontSize;

  CardDetailRow({
    required this.text,
    required this.icon,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          text,
          style: kCardTextStyle(
            fontSize,
            kGoldenColor2,
          ),
        ),
        SizedBox(
          width: 9.h,
        ),
        Icon(
          icon,
          color: kGoldenColor2,
          size: 17.sm,
        ),
      ],
    );
  }
}
