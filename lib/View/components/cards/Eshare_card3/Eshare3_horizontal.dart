import 'package:e_share/Model/CRUD/read_documents/current_user_data/get_current_user_id.dart';
import 'package:e_share/Model/CRUD/read_documents/get_saved_cards/get_saved_card_information.dart';
import 'package:e_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EshareHorizontalThree extends StatelessWidget {
  int cardNo = 3;

  final Widget fullNameWidget;
  final Widget professionWidget;
  final Widget addressWidget;
  final Widget phoneNumberWidget;
  final Widget emailWidget;
  final Widget websiteWidget;

  EshareHorizontalThree({
    required this.fullNameWidget,
    required this.professionWidget,
    required this.addressWidget,
    required this.phoneNumberWidget,
    required this.emailWidget,
    required this.websiteWidget,
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
        // Text(
        //   text,
        //   style: basicTextStyle(
        //     font: 'poppins',
        //     fontSize: 10,
        //   ),
        // ),
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
