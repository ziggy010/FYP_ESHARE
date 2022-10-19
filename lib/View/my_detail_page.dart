import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/components/my_detail_components/my_detail_bottom.dart';
import 'package:e_share/View/components/my_detail_components/my_detail_mid.dart';
import 'package:e_share/View/components/my_detail_components/my_detail_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDetail extends StatelessWidget {
  const MyDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBakgroundColor,
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
