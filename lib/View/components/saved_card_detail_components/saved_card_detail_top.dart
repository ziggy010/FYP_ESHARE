import 'package:e_share/constant.dart';
import 'package:e_share/View/components/cards/Eshare_card3/Eshare3_horizontal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedCardDetailTop extends StatelessWidget {
  final String name;

  SavedCardDetailTop({
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 192.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kContainerColor,
        borderRadius: BorderRadius.circular(
          20.r,
        ),
      ),
      child: EshareHorizontalThree(
        name: name,
        profession: 'App Developer',
        email: 'tajale01@gmail.com',
        number: '9813110577',
        address: 'Kamalbinayak, Bhaktapur',
        website: 'risab.com.np',
      ),
    );
  }
}
