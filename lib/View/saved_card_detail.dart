import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/components/saved_card_detail_components/saved_card_detail_mid.dart';
import 'package:e_share/View/components/saved_card_detail_components/saved_card_detail_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedCardDetail extends StatelessWidget {
  const SavedCardDetail({super.key});

  static const String id = '/SavedCardDetail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kNavbarColor,
        title: Text(
          'Risab Tajale',
          style: kAppBar,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 32.w,
          left: 24.h,
          right: 24.h,
        ),
        child: Column(
          children: const [
            SavedCardDetailTop(),
            SavedCardDetailMid(),
          ],
        ),
      ),
    );
  }
}
