import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/components/card_design_components/card_design_mid.dart';
import 'package:e_share/View/components/card_design_components/card_design_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardDesignPage extends StatelessWidget {
  const CardDesignPage({super.key});

  static const String id = '/cardDesignPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kNavbarColor,
        title: Text(
          'Card Designs',
          style: kAppBar,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          right: 24.0.h,
          left: 24.h,
          top: 24.w,
        ),
        child: Column(
          children: const [
            CardDesignTop(),
            CardDesignMid(),
          ],
        ),
      ),
    );
  }
}
