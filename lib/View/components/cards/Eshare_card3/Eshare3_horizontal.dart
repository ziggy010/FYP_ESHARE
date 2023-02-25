import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/Model/CRUD/read_documents/get_saved_cards/get_saved_card_information.dart';
import 'package:e_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EshareHorizontalThree extends StatelessWidget {
  int cardNo = 3;

  final String docId;

  EshareHorizontalThree({
    required this.docId,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                GetSavedCardInformationModel(
                  documentId: docId,
                  textStyle: basicTextStyle(fontSize: 24, font: 'lobster'),
                  keyValue: 'FullName',
                ),
                // Text(
                //   GetCurrentUserModel.name,
                //   style: basicTextStyle(font: 'lobster', fontSize: 24),
                // ),
                Text(
                  GetCurrentUserModel.profession,
                  style: basicTextStyle(font: 'poppins', fontSize: 12),
                ),
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
                    text: GetCurrentUserModel.address,
                    icon: Icons.location_on_outlined,
                  ),
                  CardRowDetail(
                    text: GetCurrentUserModel.number,
                    icon: Icons.phone_outlined,
                  ),
                  CardRowDetail(
                    text: GetCurrentUserModel.email,
                    icon: Icons.email_outlined,
                  ),
                  CardRowDetail(
                    text: GetCurrentUserModel.website,
                    icon: Icons.language_outlined,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardRowDetail extends StatelessWidget {
  final String text;
  final IconData icon;

  CardRowDetail({
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          text,
          style: basicTextStyle(
            font: 'poppins',
            fontSize: 10,
          ),
        ),
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
