import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/components/my_detail_components/my_detail_bottom.dart';
import 'package:e_share/View/components/my_detail_components/my_detail_mid.dart';
import 'package:e_share/View/components/my_detail_components/my_detail_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyDetail extends StatelessWidget {
  const MyDetail({super.key});

  static const String id = '/MyDetail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kNavbarColor,
        title: Text(
          'Visiting Card',
          style: kAppBar,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
        ),
        child: Column(
          children: [
            MyDetailTop(),
            MyDetailMid(),
            MyDetailBottom(),
          ],
        ),
      ),
    );
  }
}
